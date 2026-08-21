# Citi Bike Trip Duration Analysis Using SQL

## Overview

This project analyzes New York City Citi Bike trip data using SQL and BigQuery. The analysis focuses on trip duration by starting station and uses subqueries to identify patterns, compare station-level averages, and determine the five stations with the longest mean trip durations.

The project is based on a public Citi Bike dataset available through Google BigQuery and demonstrates practical SQL techniques for extracting, aggregating, comparing, and filtering data.

## Business Scenario

A transportation organization is evaluating the use of bike-sharing systems to support the city's environmental and sustainability goals.

The analysis is designed to provide useful information about Citi Bike usage, particularly:

* Average trip duration by starting station
* Differences between individual station averages and station-level trip durations
* The five stations with the longest average trip durations

These results can help identify stations and usage patterns that may warrant further investigation when evaluating bike-sharing infrastructure.

## Dataset

**Source:** Google BigQuery Public Datasets

**Dataset:** `bigquery-public-data.new_york_citibike`

**Table:** `citibike_trips`

The Citi Bike dataset is a public, periodically updated dataset. Because the underlying data can change over time, query results may differ from results shown in instructional materials.

## SQL Skills Demonstrated

This project demonstrates the following SQL concepts:

* `SELECT`
* Subqueries
* Subqueries in the `SELECT` statement
* Subqueries in the `FROM` statement
* Subqueries in the `WHERE` statement
* `AVG()`
* `ROUND()`
* `GROUP BY`
* `ORDER BY`
* `DESC`
* `LIMIT`
* `IN`
* Table aliases
* Filtering with `WHERE`
* Aggregation
* Derived tables
* Nested queries

## Analysis 1: Average Trip Duration by Station

The first analysis calculates the average trip duration for each starting station.

The query:

1. Groups trips by `start_station_id`
2. Calculates the average `tripduration`
3. Creates an `avg_duration` field
4. Uses a subquery in the `FROM` clause
5. Orders the results by average duration in descending order

This produces a station-level dataset that can be used to compare average trip durations across Citi Bike stations.

## Analysis 2: Comparing Station Trip Duration

The second analysis compares trip durations at individual stations against their station-level average.

The query uses correlated subqueries to:

* Calculate the average duration for a particular station
* Calculate the difference between a trip's duration and that station's average
* Identify records with unusually large differences

The resulting `difference_from_avg` field can help identify potential outliers that may require further investigation.

## Analysis 3: Five Stations With the Longest Mean Trip Duration

The final analysis identifies the five stations with the highest average trip durations.

The query:

1. Groups trips by `start_station_id`
2. Calculates the average `tripduration`
3. Sorts stations by average duration in descending order
4. Limits the results to five stations
5. Uses the resulting station IDs to filter the main trip dataset

This allows the analysis to focus specifically on trips associated with the stations that have the longest mean trip durations.

## Key SQL Technique: Subqueries

A major focus of this project is the use of SQL subqueries.

Subqueries allow intermediate results to be generated and then used by an outer query. In this project, they are used to:

* Create derived tables
* Calculate station-level averages
* Compare individual records with calculated averages
* Identify top-performing groups before filtering the main dataset

This demonstrates how subqueries can be used to build more complex analytical queries from a public dataset.

## Project Structure

```text
Citi-Bike-Trip-Duration-Analysis/
│
├── README.md
│
├── sql/
│   ├── average_trip_duration.sql
│   ├── station_average_comparison.sql
│   └── top_five_longest_duration_stations.sql
│
└── screenshots/
    ├── average_trip_duration.png
    ├── station_average_comparison.png
    └── top_five_longest_duration_stations.png
```

## Tools Used

* **Google BigQuery**
* **SQL**
* **Citi Bike Public Dataset**

## Learning Outcomes

Through this project, I practiced using SQL subqueries to break complex analytical problems into smaller logical steps. I also strengthened my understanding of aggregation, filtering, grouping, aliases, nested queries, and using intermediate query results to answer analytical questions.

## Disclaimer

This project uses a publicly available Citi Bike dataset for educational and portfolio purposes. The dataset is periodically updated, so query results may change over time.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
