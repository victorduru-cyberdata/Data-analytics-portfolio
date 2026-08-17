# Spreadsheet Data Cleaning – San Francisco Boba Tea Shops

## Project Overview

This project demonstrates practical spreadsheet data-cleaning techniques using Google Sheets to prepare a real-world dataset for analysis. The dataset contains information about boba tea shops in San Francisco, including business IDs, names, Yelp ratings, addresses, and geographic coordinates.

The objective was to identify and correct data quality issues so the dataset could be used for reliable business analysis and decision-making.

---

## Business Scenario

A San Francisco marketing agency planned to collaborate with highly rated local boba tea shops within a 10-mile radius of its target area. Before the data could be analyzed, the agency needed the dataset cleaned to remove inconsistencies and improve accuracy.

As the data analyst, my responsibility was to clean the dataset and ensure it was accurate, consistent, and analysis-ready.

---

## Dataset

**Dataset Name**

`sf_boba_tea_shop_data.csv`

The original dataset was provided as a **CSV (Comma-Separated Values)** file containing information about hundreds of boba tea shops.

---

## Data Import

Before beginning the cleaning process, I imported the CSV dataset into **Google Sheets**.

Importing the CSV file allowed me to use spreadsheet tools and built-in functions to clean and validate the data efficiently.

---

## Data Quality Issues Identified

The dataset contained several common data quality problems:

- Duplicate records
- Invalid Yelp ratings greater than 5
- Latitude and longitude combined into a single column
- Longitude values stored with incorrect signs

---

## Data Cleaning Process

### 1. Removed Duplicate Records

Used **Data → Data Cleanup → Remove Duplicates** to identify duplicate shop records based on Shop ID and Shop Name.

**Result**

- Removed duplicate rows
- Produced a cleaner dataset for analysis

---

### 2. Identified Invalid Yelp Ratings

Used the following formula:

```excel
=COUNTIF(C:C,">5")
```

This identified all ratings greater than the maximum valid Yelp rating of **5**.

---

### 3. Corrected Invalid Ratings

Sorted the dataset from highest to lowest rating.

Replaced every value greater than **5** with the maximum valid rating:

```
5
```

Verified the correction by running the COUNTIF formula again.

---

### 4. Split Latitude and Longitude

Separated the combined geographic coordinates into individual columns using:

```excel
=SPLIT(F2,"-")
```

This created separate Latitude and Longitude fields.

---

### 5. Corrected Longitude Values

Converted longitude values into negative geographic coordinates using:

```excel
=G2*-1
```

Copied the corrected values back into the main dataset using **Paste Special → Values Only**.

---

## Spreadsheet Functions Used

| Function | Purpose |
|----------|---------|
| COUNTIF | Counted invalid Yelp ratings greater than 5 |
| SPLIT | Separated latitude and longitude into different columns |

---

## Tools Used

- Google Sheets
- CSV Dataset
- Spreadsheet Functions
- Data Cleanup Tools
- Sorting and Filtering

---

## Skills Demonstrated

- Data Cleaning
- Data Validation
- Duplicate Removal
- Spreadsheet Functions
- CSV Data Import
- Data Transformation
- Sorting and Filtering
- Geographic Data Cleaning
- Spreadsheet Analysis

---

## Project Structure

```
Spreadsheet Data Cleaning - Boba Tea Shops
│
├── README.md
├── original-dataset
│   └── sf_boba_tea_shop_data.csv
├── cleaned-data
│   └── sf_boba_tea_shop_data.xlsx
└── screenshots
```

---

## Results

After cleaning, the dataset:

- Contains no duplicate records
- Includes valid Yelp ratings
- Separates latitude and longitude into individual columns
- Uses accurate longitude values for mapping
- Is organized and ready for analysis

---

## What I Learned

Through this project, I strengthened my ability to prepare raw datasets for analysis by:

- Importing CSV files into Google Sheets
- Detecting and correcting data quality issues
- Applying spreadsheet functions to validate data
- Transforming geographic coordinates
- Producing clean, analysis-ready datasets

---

## Author

**Victor Duru**

Google Data Analytics Portfolio