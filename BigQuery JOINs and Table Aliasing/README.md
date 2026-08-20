# BigQuery JOINs and Table Aliasing

## Project Overview

This project demonstrates practical SQL data analysis using **Google BigQuery** and public datasets. The project focuses on combining relational tables with SQL `JOIN` statements, using table aliases to improve query readability, and applying filtering, aggregation, and sorting techniques to answer analytical questions.

The analysis uses the **World Bank International Education** dataset and the **NCAA Basketball** public dataset available through BigQuery.

The project demonstrates how selecting an appropriate JOIN type can affect the records returned from a query and how related tables can be combined using shared key fields.

---

## Objectives

The objectives of this project were to:

* Explore and work with public datasets in Google BigQuery.
* Identify fields that can be used to connect related tables.
* Understand the role of primary and foreign keys in relational data.
* Use `INNER JOIN` to combine matching records from multiple tables.
* Use `LEFT JOIN` when all records from the left table need to be retained.
* Apply table aliases to simplify complex SQL queries.
* Filter records using `WHERE`.
* Exclude missing values using `IS NOT NULL`.
* Aggregate numerical data using `SUM()` and `AVG()`.
* Group analytical results using `GROUP BY`.
* Sort results using `ORDER BY`.
* Analyze how different JOIN strategies affect query results.

---

## Tools and Technologies

* **Google BigQuery**
* **SQL**
* **BigQuery Public Datasets**
* **GitHub**
* **Visual Studio Code**

---

# Dataset 1: World Bank International Education

The first part of the project uses the BigQuery public dataset:

`bigquery-public-data.world_bank_intl_education`

Two tables were used:

* `international_education`
* `country_summary`

The two tables share the `country_code` field, which was used as the key for joining the tables. The activity uses this shared field to demonstrate how related records can be combined across relational tables.

---

## INNER JOIN Without Aliasing

The first query joins the `international_education` and `country_summary` tables without using aliases.

The query returns:

* Country name
* Country code
* Education-related value

This demonstrates the basic structure of an `INNER JOIN` and how records are returned when the join key exists in both tables.

---

## INNER JOIN With Table Aliasing

The second query performs the same type of JOIN while assigning aliases to the tables:

* `edu` → `international_education`
* `summary` → `country_summary`

Using aliases makes SQL queries shorter and easier to read, particularly when working with long project, dataset, table, and column names.

For example:

```sql
FROM `bigquery-public-data.world_bank_intl_education.international_education` AS edu
INNER JOIN `bigquery-public-data.world_bank_intl_education.country_summary` AS summary
ON edu.country_code = summary.country_code
```

---

# World Bank Regional Education Analysis

The third query extends the JOIN by performing an analytical calculation.

The objective was to determine the total population of the official age for secondary education in **2015**, broken down by world region.

The analysis:

* Joins the two World Bank tables using `country_code`.
* Excludes records where the region is missing.
* Filters for the secondary education population indicator.
* Filters the data to the year 2015.
* Uses `SUM()` to calculate the population.
* Groups the results by region.
* Sorts the results from the highest population to the lowest.

The query uses:

```sql
SUM(edu.value) AS secondary_edu_population
```

and:

```sql
ORDER BY secondary_edu_population DESC
```

This demonstrates how JOINs can be combined with aggregation and filtering to produce an analytical result rather than simply displaying raw records.

---

# Dataset 2: NCAA Basketball

The final analysis uses the BigQuery public NCAA Basketball dataset.

The query combines:

* `mbb_historical_teams_seasons`
* `mascots`

The tables are joined using:

```sql
seasons.team_id = mascots.id
```

A `LEFT JOIN` was used because the analysis needs to retain teams even when corresponding mascot information is unavailable. Using an `INNER JOIN` could exclude teams that do not have matching mascot records.

The analysis focuses on:

* NCAA Division I teams
* Seasons from 1990 through 1999
* Team names
* Universities
* Team mascots
* Average wins
* Average losses
* Average ties

The query uses `AVG()` to calculate the average performance statistics and `GROUP BY` to organize the results by university, team, and mascot.

---

# SQL Concepts Demonstrated

| SQL Concept    | Application                               |
| -------------- | ----------------------------------------- |
| `SELECT`       | Selecting fields for analysis             |
| `FROM`         | Identifying source tables                 |
| `INNER JOIN`   | Combining matching records                |
| `LEFT JOIN`    | Retaining all records from the left table |
| `ON`           | Defining relationships between tables     |
| Table aliases  | Simplifying table references              |
| `WHERE`        | Filtering records                         |
| `IS NOT NULL`  | Removing records with missing values      |
| `BETWEEN`      | Filtering a range of years                |
| `SUM()`        | Calculating population totals             |
| `AVG()`        | Calculating average statistics            |
| `GROUP BY`     | Organizing aggregated results             |
| `ORDER BY`     | Sorting analytical results                |
| Column aliases | Creating descriptive output names         |

---

# Key Skills Demonstrated

### Relational Data Analysis

Understanding how multiple tables can be connected through shared key fields.

### SQL JOINs

Applying `INNER JOIN` and `LEFT JOIN` appropriately based on the analytical requirements of the query.

### Table Aliasing

Using aliases such as `edu`, `summary`, `seasons`, and `mascots` to make multi-table queries more readable.

### Data Filtering

Using `WHERE`, `IS NOT NULL`, and `BETWEEN` to restrict data to the records required for analysis.

### Aggregation

Using `SUM()` and `AVG()` to transform individual records into meaningful analytical summaries.

### Data Organization

Using `GROUP BY` and `ORDER BY` to organize and rank analytical results.

---

# Project Structure

```text
BigQuery-JOINs-and-Table-Aliasing/
│
├── README.md
├── LICENSE
├── SQL_Queries.sql
│
└── screenshots/
    ├── 01-public-dataset.png
    ├── 02-table-schema.png
    ├── 03-inner-join.png
    ├── 04-aliasing.png
    ├── 05-regional-analysis.png
    └── 06-left-join.png
```

The `SQL_Queries.sql` file contains the complete SQL queries used during the project.

The `screenshots` directory provides visual evidence of the BigQuery work and query results.

---

# Key Takeaways

This project reinforced the importance of selecting the correct JOIN type when working with relational data.

An `INNER JOIN` is useful when only records with matching keys are required, while a `LEFT JOIN` is useful when all records from the left table must be preserved, even when corresponding information is unavailable in the right table.

The project also demonstrated how table aliases improve readability and how JOINs can be combined with filtering, aggregation, grouping, and sorting to perform meaningful data analysis.

---

# Conclusion

This project demonstrates practical SQL skills using Google BigQuery and public datasets. By working with World Bank education data and NCAA basketball data, the analysis shows how relational tables can be combined and transformed into useful analytical datasets.

The project strengthened practical experience with SQL JOINs, table aliasing, filtering, aggregation, grouping, and sorting while working with real-world public datasets.
