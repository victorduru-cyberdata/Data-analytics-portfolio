# SQL Data Cleaning and Preparation with Google BigQuery

## Project Overview

This project demonstrates a complete SQL data cleaning workflow using Google BigQuery. The objective was to transform raw datasets into clean, consistent, and analysis-ready data by identifying and correcting data quality issues. Throughout the project, I applied industry-standard SQL techniques to inspect, validate, clean, standardize, and prepare data before analysis.

The project combines both foundational and advanced SQL data cleaning techniques learned through hands-on practice with real-world datasets.

---

## Business Scenario

Organizations depend on clean, accurate, and consistent data to make informed business decisions. This project focused on preparing automobile and retail transaction datasets for analysis by identifying missing values, correcting inconsistencies, standardizing data, converting data types, and creating unique identifiers.

The goal was to improve data quality and ensure the datasets were reliable for reporting and analytical tasks.

---

## Project Objectives

* Import CSV datasets into Google BigQuery.
* Explore and understand dataset structure.
* Detect and correct data quality issues.
* Handle missing values.
* Standardize inconsistent records.
* Convert incorrect data types.
* Create unique product identifiers.
* Validate cleaned datasets.
* Prepare datasets for business analysis.

---

## Datasets

* **automobile_data.csv**
* **Lauren-Furniture-Store-Transaction-Table.csv**

---

## Tools & Technologies

* Google BigQuery
* SQL
* CSV Files
* Visual Studio Code
* Git
* GitHub

---

## SQL Skills Demonstrated

* Data Inspection
* Data Validation
* Data Cleaning
* Missing Value Detection
* String Manipulation
* Data Type Conversion
* Creating Unique Keys
* Data Standardization
* Preparing Data for Analysis

---

## SQL Functions Used

| Function   | Purpose                         |
| ---------- | ------------------------------- |
| SELECT     | Retrieve data                   |
| DISTINCT   | Identify unique values          |
| WHERE      | Filter records                  |
| COUNT()    | Count records                   |
| MIN()      | Find minimum values             |
| MAX()      | Find maximum values             |
| LENGTH()   | Measure string length           |
| IS NULL    | Detect missing values           |
| TRIM()     | Remove extra spaces             |
| CAST()     | Convert data types              |
| CONCAT()   | Combine multiple strings        |
| COALESCE() | Return the first non-null value |

---

# Data Cleaning Workflow

## 1. Dataset Import

* Created BigQuery datasets.
* Imported CSV files into SQL tables.
* Verified schema detection.

---

## 2. Data Inspection

Performed an initial inspection to understand the structure and quality of the data before cleaning.

Activities included:

* Viewing records
* Identifying unique values
* Checking categorical variables
* Reviewing dataset structure

---

## 3. Data Validation

Validated numerical columns using aggregate functions to detect unexpected values.

Functions used:

* MIN()
* MAX()

---

## 4. Missing Value Detection

Located incomplete records using SQL conditions such as:

* IS NULL

This ensured missing information was identified before analysis.

---

## 5. Data Standardization

Improved consistency by:

* Correcting spelling errors
* Removing unnecessary spaces
* Identifying invalid records
* Standardizing text values

Function used:

* TRIM()

---

## 6. Advanced Data Cleaning

### CAST()

Used CAST() to convert data into the appropriate data types.

Examples:

* Converted purchase prices to **FLOAT64** for accurate numerical analysis.
* Converted datetime values to display only the date.

---

### CONCAT()

Used CONCAT() to combine multiple text fields into a single identifier.

This created unique product keys that simplified product identification, grouping, and counting.

---

### COALESCE()

Applied COALESCE() to return the first non-null value within a list.

Benefits included:

* Preventing null values from affecting calculations.
* Improving data consistency.
* Saving time during data preparation.
* Producing more reliable analytical results.

---

## 7. Final Validation

Performed a final review to ensure:

* Missing values were addressed.
* Text fields were standardized.
* Numerical values were valid.
* Data types were correct.
* Datasets were ready for analysis.

---

## Challenges Encountered

During the project, Google BigQuery Sandbox restricted Data Manipulation Language (DML) operations such as UPDATE and DELETE because billing was not enabled. Instead of modifying the records directly, I inspected the affected rows using SELECT statements to understand the required cleaning steps while continuing the project within the Sandbox limitations.

---

## Key Skills Developed

* SQL Query Writing
* Data Cleaning
* Data Validation
* Data Preparation
* BigQuery Database Management
* Analytical Thinking
* Problem Solving
* Data Quality Assessment
* Business Data Preparation

---

## Key Learnings

This project strengthened my understanding of the importance of data quality in analytics. I learned how to inspect datasets, identify inconsistencies, manage missing values, convert data types, standardize text fields, create unique identifiers, and prepare clean datasets for accurate business analysis.

---

## Project Outcome

Successfully transformed raw datasets into clean, standardized, and analysis-ready data using SQL in Google BigQuery. The project demonstrates practical knowledge of real-world data cleaning techniques commonly used by data analysts to improve data quality and support informed business decision-making.

---
## Screenshots

This repository includes screenshots documenting each major stage of the data cleaning workflow.

| Screenshot | Description |
|------------|-------------|
| 01_dataset_created.png | Created the BigQuery dataset used for the project. |
| 02_automobile_data_schema.png | Imported and reviewed the automobile dataset schema. |
| 02_Lauren-Furniture-Store_schema.png | Imported and reviewed the furniture dataset schema. |
| 03_car_info_data_preview.png | Previewed the automobile dataset before cleaning. |
| 03_customer_purchase_data_preview.png | Previewed the furniture transaction dataset before cleaning. |
| 04_select_distinct.png | Used `SELECT DISTINCT` to inspect unique values. |
| 07_cast_function.png | Converted data types using the `CAST()` function. |
| 07_cast1_function.png | Additional example demonstrating data type conversion with `CAST()`. |
| 08_concat_function.png | Created unique identifiers using the `CONCAT()` function. |
| 09_coalesce_function.png | Replaced missing values using the `COALESCE()` function. |


## Repository Structure

SQL-Data-Cleaning-BigQuery/
│
├── datasets/
│   ├── automobile_data.csv
│   └── Lauren-Furniture-Store-Transaction-Table.csv
│
├── docs/
│   └── project_summary.md
│
├── screenshots/
│   ├── 01_dataset_created.png
│   ├── 02_automobile_data_schema.png
│   ├── 02_Lauren-Furniture-Store_schema.png
│   ├── 03_car_info_data_preview.png
│   ├── 03_customer_purchase_data_preview.png
│   ├── 04_select_distinct.png
│   ├── 07_cast_function.png
│   ├── 07_cast1_function.png
│   ├── 08_concat_function.png
│   └── 09_coalesce_function.png
│
├── sql_queries/
│   ├── automobile_data_cleaning.sql
│   └── furniture_data_cleaning.sql
│
├── LICENSE
└── README.md

```

---

## Screenshots

The **screenshots** folder contains key stages of the project, including:

* Dataset creation
* CSV import
* Data preview
* Data validation
* CAST() implementation
* CONCAT() implementation
* COALESCE() implementation
* Final cleaned dataset

---

## Future Improvements

* Automate repetitive cleaning tasks using SQL scripts.
* Integrate additional datasets for broader analysis.
* Build dashboards using the cleaned data.
* Extend the workflow using Python for automated data preprocessing.

---

## Author

**Victor Duru**

Aspiring Data Analyst with practical experience in SQL, Google BigQuery, spreadsheet analysis, and data cleaning. This repository showcases hands-on projects completed while developing industry-ready data analytics skills.
