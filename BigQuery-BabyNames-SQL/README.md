# BigQuery Baby Names SQL Project

## Overview

This project was completed as part of my Google Data Analytics Professional Certificate on Coursera.

## Project Objective

The objective of this project was to use SQL in Google BigQuery to retrieve the five most popular male baby names from the 2014 Baby Names dataset.

## Skills Demonstrated

- SQL
- Google BigQuery
- SELECT
- WHERE
- ORDER BY
- LIMIT

## SQL Query

```sql
SELECT
  name,
  count
FROM `project-07f78a79-bb55-4d4e-b12.Babynames.names_2014`
WHERE gender = 'M'
ORDER BY count DESC
LIMIT 5;
```

## Result

The query successfully returns the five most popular male baby names in descending order based on the number of occurrences.

## Tools Used

- Google BigQuery
- SQL
- Visual Studio Code
- GitHub