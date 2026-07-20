# BigQuery NYC Trees Analysis

## Overview

This project was completed as part of the Google Data Analytics Professional Certificate on Coursera.

The project involved querying a public dataset in Google BigQuery containing New York City Street Tree Census data. SQL aggregate functions were used to calculate and compare the average tree diameters across different census years.

---

## Project Objectives

- Explore a public dataset in Google BigQuery.
- Retrieve data using SQL.
- Calculate the average diameter of trees using the AVG() function.
- Compare tree measurements across multiple census years.

---

## Dataset

**Dataset:** NYC Street Trees

**Source:** Google Cloud Public Datasets

Tables used:

- tree_census_1995
- tree_census_2005
- tree_census_2015

---

## Skills Demonstrated

- SQL
- Google BigQuery
- Aggregate Functions
- AVG()
- Public Dataset Exploration
- Data Analysis

---

## SQL Query

```sql
SELECT
AVG(tree_dbh)
FROM
`bigquery-public-data.new_york_trees.tree_census_2005`;
```

---

## Result

The query calculated the average tree diameter for New York City trees in the 2005 census.

Additional analysis included comparing average tree diameters across different census years.

---

## Tools Used

- Google BigQuery
- SQL
- Visual Studio Code
- Git
- GitHub