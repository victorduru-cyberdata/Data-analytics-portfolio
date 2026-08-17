# Project Summary

## Executive Summary

High-quality data is essential for accurate analysis and informed business decision-making. This project demonstrates a complete SQL data cleaning workflow using Google BigQuery, where raw datasets were transformed into clean, consistent, and analysis-ready data.

Using both automobile and retail transaction datasets, I applied a combination of fundamental and advanced SQL techniques to identify data quality issues, standardize records, handle missing values, convert data types, and create meaningful identifiers. The project reflects a structured approach to data preparation that aligns with real-world data analytics practices.

---

# Business Objective

The objective of this project was to improve the quality and reliability of raw data before analysis. Clean and standardized data minimizes errors, improves reporting accuracy, and provides a stronger foundation for data-driven decision-making.

---

# Datasets

This project was completed using two datasets:

- **Automobile Dataset** (`automobile_data.csv`)
- **Lauren Furniture Store Transaction Dataset** (`Lauren-Furniture-Store-Transaction-Table.csv`)

Each dataset presented unique data quality challenges that required different SQL techniques to prepare them for analysis.

---

# Methodology

A systematic data cleaning workflow was followed throughout the project.

### Data Inspection

The datasets were explored to understand their structure, identify inconsistencies, and detect potential data quality issues before any cleaning operations were performed.

Activities included:

- Reviewing table contents
- Identifying unique values
- Examining categorical variables
- Validating numerical ranges

---

### Data Cleaning

The automobile dataset required several data quality improvements, including:

- Identifying missing values
- Detecting inconsistent values
- Removing unnecessary whitespace
- Correcting formatting inconsistencies
- Validating numerical fields

---

### Advanced SQL Data Preparation

The furniture transaction dataset focused on applying advanced SQL functions to improve data usability.

#### CAST()

Converted fields into appropriate data types, including:

- Purchase prices to **FLOAT64**
- Datetime values to **DATE**

This ensured calculations and reporting were performed using the correct data types.

---

#### CONCAT()

Combined multiple text fields to generate unique product identifiers.

Creating unique keys simplified product identification while improving grouping and counting operations during analysis.

---

#### COALESCE()

Applied the `COALESCE()` function to return the first available non-null value.

This approach improved data completeness, prevented null values from affecting calculations, and increased the reliability of analytical results.

---

# SQL Techniques Applied

Throughout this project, the following SQL functions were used:

- SELECT
- DISTINCT
- WHERE
- COUNT()
- MIN()
- MAX()
- LENGTH()
- IS NULL
- TRIM()
- CAST()
- CONCAT()
- COALESCE()

---

# Technical Challenge

While working in the Google BigQuery Sandbox environment, Data Manipulation Language (DML) statements such as `UPDATE` and `DELETE` were restricted because billing was not enabled.

To complete the project successfully, affected records were identified and validated using `SELECT` queries while following the recommended workflow for BigQuery Sandbox users.

---

# Skills Demonstrated

- SQL Query Development
- Data Cleaning
- Data Validation
- Missing Value Management
- Data Type Conversion
- String Manipulation
- Data Standardization
- Google BigQuery
- Data Preparation
- Analytical Problem Solving

---

# Project Outcome

The project successfully transformed raw datasets into clean, structured, and analysis-ready data. By applying both foundational and advanced SQL techniques, I improved data quality, enhanced consistency, and prepared reliable datasets suitable for business reporting and analytical decision-making.

This project strengthened my practical SQL skills and reinforced the importance of systematic data preparation as a critical stage of the data analytics lifecycle.