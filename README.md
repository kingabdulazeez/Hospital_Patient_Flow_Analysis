# Hospital Patient Flow & Resource Analysis

## Project Overview

This project presents an end-to-end analysis of hospital patient flow, healthcare operations, billing, and resource utilisation.

The analysis focuses on patient admissions, departmental workload, patient outcomes, length of stay, insurance coverage, revenue collection, and readmission patterns.

The project uses Python, MySQL, Microsoft Excel, and Power BI to transform hospital data into actionable operational and financial insights.

## Business Problem

Healthcare organisations manage large volumes of patient and operational data. Without effective analysis, it can be difficult to identify patient flow patterns, resource utilisation challenges, revenue collection gaps, and departments requiring operational improvement.

This project analyses hospital patient data to provide insights that can support better healthcare operations and data-driven decision-making.

## Project Objectives

The analysis aims to:

* Analyse patient admission trends.
* Identify departments with high patient volumes.
* Examine patient outcomes across departments.
* Analyse patient length of stay.
* Evaluate hospital billing and payment performance.
* Identify revenue collection gaps.
* Analyse insurance type distribution.
* Evaluate patient readmission patterns.
* Identify peak admission periods.
* Develop an interactive healthcare performance dashboard.

## Dataset Overview

The dataset contains **60,000 patient records and 17 variables**.

Key fields include:

* Patient ID
* Age
* Gender
* State of Origin
* Department
* Diagnosis
* Admission Date
* Admission Time
* Discharge Date
* Length of Stay
* Patient Outcome
* Insurance Type
* Total Bill
* Amount Paid
* Attending Doctor ID
* Ward
* Readmission Status

## Tools Used

* **Python:** Data cleaning, exploratory data analysis, feature engineering, and visualisation.
* **MySQL:** Healthcare data querying and advanced SQL analysis.
* **Microsoft Excel:** Pivot tables, financial calculations, KPI analysis, and conditional formatting.
* **Power BI:** Interactive hospital performance dashboard and business intelligence reporting.

## Data Cleaning and Preparation

The dataset was inspected for missing values, duplicate records, and incorrect data types.

The following preparation steps were performed:

* Reviewed 60,000 patient records.
* Checked the dataset for duplicate records.
* Identified missing values in the `insurance_type` field.
* Handled missing insurance information appropriately.
* Converted admission and discharge dates to the correct date format.
* Extracted time and date information for admission trend analysis.
* Created a billing gap calculation to analyse outstanding patient balances.

### Calculated Variable

**Bill Gap**

`Bill Gap = Total Bill - Amount Paid`

This variable was used to evaluate the difference between hospital billing and actual payments received.

## Exploratory Data Analysis

Python was used to analyse hospital patient flow and operational performance.

The analysis included:

* Monthly patient admission trends.
* Top departments by patient admissions.
* Patient outcomes by department.
* Length of stay by department.
* Admissions by hour and day of the week.
* Insurance type distribution.
* Average bill and payment by insurance type.
* Age and length of stay by patient outcome.

## SQL Analysis

MySQL was used to answer operational and financial healthcare questions.

SQL concepts used include:

* `SELECT`
* `GROUP BY`
* Aggregate functions
* `CASE WHEN`
* Date and time functions
* Common Table Expressions (CTEs)
* Window functions
* `RANK()`

The SQL analysis examined:

* Total admissions and average length of stay by department.
* Monthly admission trends.
* Top diagnoses by patient frequency.
* Readmission rates by department.
* Revenue gaps by insurance type.
* Peak hospital admission hours.
* Patients with extended hospital stays.
* Mortality rates by department and year.
* Department rankings by average bill amount.
* Top wards by annual patient load.
* Year-over-year admission trends.

## Excel Analysis

Microsoft Excel was used to perform additional operational and financial analysis.

The Excel analysis included:

* Patient admission summaries.
* Collection rate analysis by insurance type.
* Bill gap calculations.
* Conditional formatting for outstanding balances.
* Top diagnoses by patient count.
* Departmental readmission analysis.
* Executive KPI calculations.

Pivot tables and charts were used to summarise hospital performance indicators.

## Power BI Dashboard

An interactive Power BI dashboard was developed to provide a consolidated view of hospital operations and financial performance.

### Key Performance Indicators

The dashboard includes:

* Total Patients
* Average Length of Stay
* Total Revenue
* Total Payments
* Collection Rate
* Readmission Rate

### Dashboard Visuals

The dashboard contains:

* Admissions by Department
* Outcomes by Department
* Patient Distribution by Insurance Type
* Monthly Admissions Trend
* Department and Outcome Matrix

Interactive slicers allow users to analyse hospital performance by:

* Department
* Insurance Type
* Patient Outcome
* Readmission Status

## Key Insights

1. Monthly patient admissions remained relatively stable across the primary analysis period, indicating consistent demand for hospital services.

2. Pediatrics recorded one of the highest patient admission volumes among the departments analysed.

3. Discharged patients represented the largest proportion of patient outcomes across departments.

4. Emergency patients generally experienced shorter lengths of stay compared with other departments.

5. Average hospital bills consistently exceeded average payments received, highlighting revenue collection gaps.

6. Patient insurance coverage was relatively distributed across the major insurance and payment categories.

## Business Recommendations

1. Strengthen hospital revenue collection processes to reduce outstanding patient balances.

2. Monitor departments with higher readmission rates and introduce targeted patient follow-up strategies.

3. Use admission trend analysis to improve staffing and hospital resource allocation.

4. Investigate factors contributing to extended patient stays in selected departments.

5. Develop regular financial monitoring of billed and collected amounts by insurance type.

6. Continue using operational dashboards to support hospital management and healthcare decision-making.

## Repository Structure

```text
hospital-patient-flow-analysis/
│
├── Hospital_Analysis_Bolaji.ipynb
├── Hospital_patient_flow_sql.sql
├── hospital_patient_flow.xlsx
├── hospital_patient_flow.pbix
├── hospital_patient_flow.pdf
├── Hospital Patient Flow & Resource Analysis Report.pdf
└── README.md
```

## File Description

* **Hospital_Analysis_Bolaji.ipynb** – Python data cleaning, exploratory data analysis, and visualisations.
* **Hospital_patient_flow_sql.sql** – MySQL queries for patient flow, departmental, financial, and readmission analysis.
* **hospital_patient_flow.xlsx** – Excel analysis containing pivot tables, calculations, and KPI summaries.
* **hospital_patient_flow.pbix** – Interactive Power BI hospital performance dashboard.
* **hospital_patient_flow.pdf** – Exported PDF version of the Power BI dashboard.
* **Hospital Patient Flow & Resource Analysis Report.pdf** – Final project report containing findings, recommendations, and conclusions.
* **README.md** – Project documentation.

## Conclusion

This project demonstrates an end-to-end healthcare data analytics workflow using Python, MySQL, Excel, and Power BI. The analysis transforms hospital patient and financial data into actionable insights that can support patient flow management, resource allocation, revenue monitoring, and operational decision-making.

## Author

**Yusuf Bolaji Abdulazeez**

Data Analyst

**Skills:** Python | SQL | Excel | Power BI
