-- Query 1: Display the first 1,000 rows from the 2005 NYC Trees dataset

SELECT *
FROM `bigquery-public-data.new_york_trees.tree_census_2005`
LIMIT 1000;

-- Query 2: Calculate the average tree diameter for the 2005 tree census

SELECT AVG(tree_dbh) AS average_tree_diameter_2005
FROM `bigquery-public-data.new_york_trees.tree_census_2005`;

-- Query 3: Calculate the average tree diameter for the 2015 tree census

SELECT AVG(tree_dbh) AS average_tree_diameter_2015
FROM `bigquery-public-data.new_york_trees.tree_census_2015`;