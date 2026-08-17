# Citi Bike Route Analysis Using SQL

## Project Overview

This project demonstrates how SQL can be used to transform and analyze data from the **New York Citi Bike public dataset** in Google BigQuery.

The analysis uses the `CONCAT()` function to combine starting and ending station names into a single route field. Additional SQL functions and clauses are then applied to calculate trip volumes, average trip duration, and identify the most frequently traveled routes.

The project demonstrates practical SQL techniques for **data transformation, aggregation, sorting, and extracting business insights from structured data**.

## Dataset

**Source:** Google BigQuery Public Dataset
**Project:** `bigquery-public-data`
**Dataset:** `new_york`
**Table:** `citibike_trips`

The dataset contains information about Citi Bike trips in New York City, including rider type, station information, and trip duration.

## Objective

The primary objective is to determine the **top 10 Citi Bike routes by number of trips** while also examining the rider type and average duration of those trips.

The analysis creates a new `route` field by combining the starting and ending station names.

## SQL Concepts Demonstrated

This project demonstrates the following SQL concepts:

* `SELECT` — selecting relevant fields for analysis
* `CONCAT()` — combining text from multiple columns
* `COUNT()` — counting the number of trips
* `CAST()` — converting `tripduration` to an integer
* `AVG()` — calculating average trip duration
* `ROUND()` — rounding numerical results to two decimal places
* `GROUP BY` — aggregating records by route and user type
* `ORDER BY` — sorting results by trip volume
* `DESC` — sorting results in descending order
* `LIMIT` — returning the top 10 results
* **Calculated fields** — creating new analytical columns from existing data
* **Data transformation** — converting trip duration from seconds to minutes

## SQL Query

```sql
SELECT
  usertype,
  CONCAT(start_station_name, ' to ', end_station_name) AS route,
  COUNT(*) AS num_trips,
  ROUND(AVG(CAST(tripduration AS INT64) / 60), 2) AS duration
FROM
  `bigquery-public-data.new_york.citibike_trips`
GROUP BY
  start_station_name,
  end_station_name,
  usertype
ORDER BY
  num_trips DESC
LIMIT 10;
```

## Query Breakdown

### 1. Create a Route

```sql
CONCAT(start_station_name, ' to ', end_station_name) AS route
```

Combines the starting and ending station names into a single field, making the route easier to interpret.

### 2. Count Trips

```sql
COUNT(*) AS num_trips
```

Counts the number of trip records associated with each route and rider type.

### 3. Calculate Average Duration

```sql
ROUND(AVG(CAST(tripduration AS INT64) / 60), 2) AS duration
```

The `tripduration` field is converted to an integer and divided by 60 to convert seconds into minutes. `AVG()` calculates the average duration, while `ROUND()` limits the result to two decimal places.

### 4. Group the Results

```sql
GROUP BY
  start_station_name,
  end_station_name,
  usertype
```

Groups trips according to their starting station, ending station, and rider type.

### 5. Rank the Routes

```sql
ORDER BY
  num_trips DESC
```

Sorts the routes from the highest number of trips to the lowest.

### 6. Return the Top 10

```sql
LIMIT 10
```

Restricts the output to the ten most frequently traveled routes.

## Key Insight

Combining station names with `CONCAT()` transforms separate data fields into a more meaningful analytical dimension. Instead of examining starting and ending stations independently, the resulting `route` field makes it possible to identify frequently traveled journeys.

The analysis can help a bike-sharing organization understand:

* Which routes experience the highest demand
* How different rider types use the system
* Average travel duration across popular routes
* Where bike availability and distribution may require additional attention

## Tools Used

* **Google BigQuery**
* **SQL**
* **BigQuery Public Datasets**

## Skills Demonstrated

This project demonstrates practical experience with:

* SQL data manipulation
* Data transformation
* String concatenation
* Aggregate functions
* Grouped analysis
* Data type conversion
* Sorting and ranking
* Business-oriented data interpretation

## Repository Contents

```text
SQL-Merge-Text-Strings-Citi-Bike/
│
├── README.md
├── merge_text_strings_citibike.sql
└── screenshots/
    ├── query.png
    └── results.png
```

## Disclaimer

This project was completed as a SQL practice and portfolio exercise using a publicly available dataset in Google BigQuery. The analysis is intended to demonstrate SQL and data analytics techniques rather than provide an official analysis of Citi Bike operations.
