CREATE DATABASE hospital_project;
USE hospital_project;
CREATE TABLE hospital_patient_table (
    patient_id VARCHAR(50),
    age INT,
    gender VARCHAR(20),
    state_of_origin VARCHAR(100),
    department VARCHAR(100),
    diagnosis VARCHAR(150),
    admission_date DATE,
    admission_time TIME,
    discharge_date DATE,
    length_of_stay_days INT,
    outcome VARCHAR(50),
    insurance_type VARCHAR(50),
    total_bill_ngn DECIMAL(15,2),
    amount_paid_ngn DECIMAL(15,2),
    attending_doctor_id VARCHAR(50),
    ward VARCHAR(50),
    readmitted VARCHAR(10)
);
USE hospital_project;

-- 1. Total admissions and average length of stay per department
SELECT
    department,
    COUNT(*) AS total_admissions,
    ROUND(AVG(length_of_stay_days), 2) AS average_los
FROM hospital_patient_table
GROUP BY department
ORDER BY total_admissions DESC;

-- 2. Monthly admissions trend
SELECT
    YEAR(admission_date) AS year,
    MONTH(admission_date) AS month,
    COUNT(*) AS total_admissions
FROM hospital_patient_table
GROUP BY YEAR(admission_date), MONTH(admission_date)
ORDER BY year, month;

-- 3. Top 10 diagnoses by frequency
SELECT
    diagnosis,
    COUNT(*) AS patient_count
FROM hospital_patient_table
GROUP BY diagnosis
ORDER BY patient_count DESC
LIMIT 10;

-- 4. Readmission rate per department
SELECT
    department,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN readmitted = 'Yes' THEN 1 ELSE 0 END) AS readmitted_patients,
    ROUND(
        SUM(CASE WHEN readmitted = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS readmission_rate_percent
FROM hospital_patient_table
GROUP BY department
ORDER BY readmission_rate_percent DESC;

-- 5. Revenue gap by insurance type
SELECT
    COALESCE(insurance_type, 'Unknown') AS insurance_type,
    SUM(total_bill_ngn) AS total_billed,
    SUM(amount_paid_ngn) AS total_collected,
    SUM(total_bill_ngn - amount_paid_ngn) AS revenue_gap
FROM hospital_patient_table
GROUP BY COALESCE(insurance_type, 'Unknown')
ORDER BY revenue_gap DESC;

-- 6. Peak admission hours
SELECT
    HOUR(admission_time) AS admission_hour,
    COUNT(*) AS total_admissions
FROM hospital_patient_table
GROUP BY HOUR(admission_time)
ORDER BY total_admissions DESC;

-- 7. Patients with length of stay greater than 14 days
SELECT
    patient_id,
    age,
    gender,
    department,
    diagnosis,
    admission_date,
    discharge_date,
    length_of_stay_days,
    outcome
FROM hospital_patient_table
WHERE length_of_stay_days > 14
ORDER BY length_of_stay_days DESC;

-- 8. Mortality rate by department and year
SELECT
    department,
    YEAR(admission_date) AS year,
    COUNT(*) AS total_patients,
    SUM(CASE WHEN outcome = 'Deceased' THEN 1 ELSE 0 END) AS deceased_patients,
    ROUND(
        SUM(CASE WHEN outcome = 'Deceased' THEN 1 ELSE 0 END) * 100 / COUNT(*),
        2
    ) AS mortality_rate_percent
FROM hospital_patient_table
GROUP BY department, YEAR(admission_date)
ORDER BY year, mortality_rate_percent DESC;

-- 9. Rank departments by average bill amount
SELECT
    department,
    ROUND(AVG(total_bill_ngn), 2) AS average_bill_amount,
    RANK() OVER (
        ORDER BY AVG(total_bill_ngn) DESC
    ) AS department_rank
FROM hospital_patient_table
GROUP BY department;

-- 10. CTE: Top 5 wards by patient load each year
WITH ward_load AS (
    SELECT
        YEAR(admission_date) AS year,
        ward,
        COUNT(*) AS patient_count,
        RANK() OVER (
            PARTITION BY YEAR(admission_date)
            ORDER BY COUNT(*) DESC
        ) AS ward_rank
    FROM hospital_patient_table
    GROUP BY YEAR(admission_date), ward
)
SELECT
    year,
    ward,
    patient_count,
    ward_rank
FROM ward_load
WHERE ward_rank <= 5
ORDER BY year, ward_rank;

-- 11. Year-over-year admissions comparison
SELECT
    YEAR(admission_date) AS year,
    COUNT(*) AS total_admissions
FROM hospital_patient_table
GROUP BY YEAR(admission_date)
ORDER BY year;