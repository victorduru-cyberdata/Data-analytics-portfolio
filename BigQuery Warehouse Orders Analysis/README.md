# BigQuery Warehouse Orders Analysis

## Project Overview

This project demonstrates practical SQL data analysis using **Google BigQuery**. The analysis focuses on warehouse and order data from a fictional sock manufacturing company and demonstrates how SQL can be used to explore relational data, combine tables, count records, identify distinct values, and analyze orders by warehouse location.

The project uses two related tables:

* `warehouse`
* `orders`

The tables are connected through the `warehouse_id` field, allowing warehouse information to be combined with order information for analysis.

---

## Objectives

The objectives of this project were to:

* Explore warehouse and order data in Google BigQuery.
* Examine the structure and contents of individual tables.
* Limit query results when exploring a dataset.
* Apply table aliases to improve SQL readability.
* Join related warehouse and order tables.
* Use `COUNT()` to count records.
* Use `COUNT(DISTINCT ...)` to identify unique values.
* Group results by warehouse state.
* Determine the number of distinct orders associated with each state.
* Understand how duplicate records can affect analytical results.

---

## Dataset Structure

### Warehouse Table

The `warehouse` table contains information about the company's warehouses.

| Column             | Description                               |
| ------------------ | ----------------------------------------- |
| `warehouse_id`     | Unique identifier for each warehouse      |
| `warehouse_alias`  | Name or alias of the warehouse            |
| `maximum_capacity` | Maximum capacity of the warehouse         |
| `employee_total`   | Number of employees at the warehouse      |
| `state`            | U.S. state where the warehouse is located |

### Orders Table

The `orders` table contains information about customer orders.

| Column         | Description                                           |
| -------------- | ----------------------------------------------------- |
| `order_id`     | Identifier for each order                             |
| `customer_id`  | Identifier for the customer                           |
| `warehouse_id` | Identifier of the warehouse associated with the order |
| `order_date`   | Date the order was placed                             |
| `shipper_date` | Date the order was shipped                            |

The `warehouse_id` field is used as the common key between the two tables.

---

# Data Exploration

The project began by querying the `warehouse` table to examine its columns and available records.

The `orders` table was then explored using `LIMIT 100` to retrieve a manageable sample of records.

Using `LIMIT` is useful when initially exploring large datasets because it allows analysts to inspect a smaller portion of the data before performing more complex analysis.

---

# Table Aliasing and JOINs

Table aliases were used to simplify references to the two tables.

The aliases used in the analysis were:

* `orders` → `orders`
* `warehouse` → `warehouse`

The two tables were joined using:

```sql
ON orders.warehouse_id = warehouse.warehouse_id
```

This relationship allows information from the warehouse table, such as the warehouse name and state, to be combined with individual order records.

The resulting dataset contains order information together with the corresponding warehouse information.

---

# COUNT Analysis

The project first used the `COUNT()` function to determine the number of records containing warehouse state information.

This demonstrated an important limitation of a basic `COUNT()` operation: it counts every qualifying record rather than counting only unique states.

Because multiple orders can originate from the same state, the resulting count was much larger than the actual number of states represented in the data.

---

# COUNT DISTINCT Analysis

To determine the number of unique states represented in the order data, the analysis was modified to use:

```sql
COUNT(DISTINCT warehouse.state)
```

`COUNT(DISTINCT ...)` removes duplicate values from the count and excludes `NULL` values.

The analysis identified **three distinct states** represented in the orders data.

This demonstrated why choosing the appropriate aggregation function is important when analyzing categorical data.

---

# Orders by State

The final analysis used `COUNT(DISTINCT orders.order_id)` together with `GROUP BY` to determine the number of distinct orders associated with each warehouse state.

The query groups the results by:

```sql
warehouse.state
```

and calculates:

```sql
COUNT(DISTINCT orders.order_id) AS num_orders
```

This produces a state-level summary showing how many distinct orders are represented in each state.

---

# SQL Concepts Demonstrated

| SQL Concept           | Application                                 |
| --------------------- | ------------------------------------------- |
| `SELECT`              | Selecting fields for analysis               |
| `FROM`                | Identifying source tables                   |
| `LIMIT`               | Restricting the number of records returned  |
| Table aliases         | Simplifying table references                |
| `JOIN`                | Combining warehouse and order data          |
| `ON`                  | Defining the relationship between tables    |
| `COUNT()`             | Counting qualifying records                 |
| `COUNT(DISTINCT ...)` | Counting unique values                      |
| `GROUP BY`            | Aggregating results by state                |
| Column aliases        | Giving calculated results descriptive names |

---

# Key Skills Demonstrated

### Relational Data Analysis

Combining related warehouse and order tables using a shared `warehouse_id` field.

### SQL Aggregation

Using `COUNT()` and `COUNT(DISTINCT ...)` to calculate numerical summaries.

### Duplicate Handling

Understanding how duplicate categorical values can affect counts and how `DISTINCT` can be used to obtain unique values.

### Data Grouping

Using `GROUP BY` to analyze order volumes at the state level.

### Data Exploration

Using `SELECT *` and `LIMIT` to inspect datasets before performing more advanced analysis.

### Table Aliasing

Using aliases to make SQL queries easier to write and understand.

---

# Tools and Technologies

* **Google BigQuery**
* **SQL**
* **CSV**
* **GitHub**
* **Visual Studio Code**

---

# Project Structure

```text
BigQuery-Warehouse-Orders-Analysis/
│
├── README.md
├── LICENSE
├── SQL_Queries.sql
├── Warehouse-Orders-Orders.csv
├── Warehouse-Orders-Warehouse.csv
│
└── screenshots/
    ├── 01-warehouse-table.png
    ├── 02-orders-table.png
    ├── 03-joined-tables.png
    ├── 04-count-states.png
    └── 05-count-distinct-states.png
```

---

# Key Takeaways

This project demonstrates that SQL aggregation must be applied carefully depending on the question being asked.

A standard `COUNT()` can count repeated values across many records, while `COUNT(DISTINCT ...)` can be used when the objective is to determine the number of unique values.

The project also demonstrates how `JOIN`, table aliases, and `GROUP BY` can be combined to transform relational warehouse and order data into useful analytical summaries.

---

# Conclusion

This project strengthened practical SQL skills using Google BigQuery by combining relational tables with JOINs and applying aggregation functions to answer business-oriented questions.

The analysis demonstrates the progression from basic data exploration to relational data integration, distinct-value analysis, and grouped order analysis by warehouse state.
