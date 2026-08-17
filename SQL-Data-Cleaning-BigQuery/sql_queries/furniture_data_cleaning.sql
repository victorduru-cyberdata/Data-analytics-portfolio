SELECT
  purchase_price
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`
ORDER BY
  purchase_price DESC


  SELECT
  CAST(purchase_price AS FLOAT64)
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`
ORDER BY
  CAST(purchase_price AS FLOAT64) DESC


SELECT
  date,
  purchase_price
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`
WHERE
  date BETWEEN '2020-12-01' AND '2020-12-31'


  SELECT
  CAST(date AS date) AS date_only,
  purchase_price
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`
WHERE
  date BETWEEN '2020-12-01' AND '2020-12-31'


SELECT
  CONCAT(product_code, product_color) AS new_product_code
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`
WHERE
  product ='couch'


  SELECT
  COALESCE(product, product_code) AS product_info
FROM
  `project-07f78a79-bb55-4d4e-b12.customer_data.customer_purchase`

