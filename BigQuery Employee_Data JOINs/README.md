# BigQuery Employee Data Analysis — SQL JOINs

## Project Overview

This project demonstrates how SQL JOIN operations can be used to combine related datasets in Google BigQuery. Employee and department data were imported from CSV files into a BigQuery dataset and analyzed using multiple JOIN types to demonstrate how relational data can be combined and compared.

The project focuses on understanding how different JOIN operations affect query results when two tables share a common field.

## Objectives

* Create a dataset in Google BigQuery.
* Import employee and department data from CSV files.
* Create and verify relational tables.
* Identify a common field used to connect the tables.
* Use multiple SQL JOIN operations to combine employee and department information.
* Compare the results produced by different JOIN types.
* Practice column aliasing to make query results easier to understand.

## Dataset Structure

The BigQuery dataset is named:

`employee_data`

It contains two tables:

### Employees Table

| Column          | Description                                                 |
| --------------- | ----------------------------------------------------------- |
| `name`          | Employee name                                               |
| `department_id` | Identifier used to associate the employee with a department |
| `role`          | Employee's job role                                         |

### Departments Table

| Column          | Description                                                |
| --------------- | ---------------------------------------------------------- |
| `name`          | Department name                                            |
| `department_id` | Identifier used to associate the department with employees |

The `department_id` field serves as the common join key between the two tables.

## SQL JOINs Demonstrated

### INNER JOIN

The `INNER JOIN` returns records where the `department_id` exists in both the employees and departments tables.

This is useful when the analysis requires only employees with a matching department.

### LEFT JOIN

The `LEFT JOIN` returns all records from the employees table and matching records from the departments table.

This can be useful when analyzing every employee while also displaying department information when a matching department exists.

### RIGHT JOIN

The `RIGHT JOIN` returns all records from the departments table and matching records from the employees table.

This can be useful when the analysis needs to retain every department, including departments that may not have a matching employee record.

### FULL OUTER JOIN

The `FULL OUTER JOIN` returns matching and non-matching records from both tables.

This is useful for identifying records that exist on either side of the relationship, including employees without matching departments and departments without matching employees.

## Example Analysis

A JOIN query was used to return employee and department information with descriptive column aliases:

```sql
SELECT
    e.name AS Employee_Name,
    e.role AS Employee_Role,
    d.name AS Department_Name
FROM
    `employee_data.employees` AS e
INNER JOIN
    `employee_data.departments` AS d
ON
    e.department_id = d.department_id;
```

The project also contains queries demonstrating `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`.

> **Note:** The complete SQL queries used in this project are available in `employee_data_joins.sql`.

## Tools and Technologies

* **Google BigQuery**
* **SQL**
* **CSV**
* **GitHub**
* **Visual Studio Code**

## Skills Demonstrated

* SQL JOIN operations
* Relational data analysis
* BigQuery dataset creation
* CSV data ingestion
* Table creation and verification
* Data integration
* Column aliasing
* Query development
* Multi-table analysis
* Understanding matching and non-matching records

## Project Files

```text
BigQuery-Employee-Data-JOINs/
│
├── README.md
├── LICENSE
├── employee_data_joins.sql
├── Departments-Table.csv
├── Employees-Table.csv
│
└── screenshots/
    ├── 01-bigquery-dataset.png
    ├── 02-employees-table.png
    ├── 03-departments-table.png
    ├── 04-inner-join.png
    ├── 05-left-join.png
    ├── 06-right-join.png
    └── 07-full-outer-join.png
```

## Conclusion

This project demonstrates the practical use of SQL JOIN operations to integrate related datasets in BigQuery. By comparing `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`, the project illustrates how different JOIN strategies affect the records returned from relational datasets.

The activity strengthened practical SQL skills in data integration, relational analysis, and query construction using Google BigQuery.
