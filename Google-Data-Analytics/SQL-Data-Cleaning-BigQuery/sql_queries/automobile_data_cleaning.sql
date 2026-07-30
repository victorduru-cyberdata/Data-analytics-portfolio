SELECT
  DISTINCT fuel_type
FROM `project-07f78a79-bb55-4d4e-b12.cars.car_info` LIMIT 1000

SELECT
  MIN(length) AS min_length,
  MAX(length) AS max_length
FROM `project-07f78a79-bb55-4d4e-b12.cars.car_info`

SELECT
  *
FROM `project-07f78a79-bb55-4d4e-b12.cars.car_info`
WHERE 
  num_of_doors IS NULL;

UPDATE
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`
SET
  num_of_doors = "four"
WHERE
  make = "dodge"
  AND fuel_type = "gas"
  AND body_style = "sedan";

SELECT
  *
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info` 
WHERE 
  num_of_doors IS NULL;

SELECT
  DISTINCT num_of_cylinders
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  DISTINCT num_of_cylinders
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  MIN(compression_ratio) AS min_compression_ratio,
  MAX(compression_ratio) AS max_compression_ratio
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`
WHERE
  compression_ratio <> 70;

SELECT
   COUNT(*) AS num_of_rows_to_delete
FROM `project-07f78a79-bb55-4d4e-b12.cars.car_info`
WHERE
   compression_ratio = 70;

SELECT
  DISTINCT drive_wheels
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  DISTINCT drive_wheels,
  LENGTH(drive_wheels) AS string_length
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

SELECT
  DISTINCT drive_wheels
FROM
  `project-07f78a79-bb55-4d4e-b12.cars.car_info`;

