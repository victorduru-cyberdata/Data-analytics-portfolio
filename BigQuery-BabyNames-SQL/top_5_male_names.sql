SELECT
  name,
  count
FROM `project-07f78a79-bb55-4d4e-b12.Babynames.names_2014`
WHERE gender = 'M'
ORDER BY count DESC
LIMIT 5;