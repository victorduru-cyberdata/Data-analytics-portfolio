SELECT
  *
FROM
   `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders`
LIMIT 100


SELECT
   *
FROM
   `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders` AS orders


   SELECT
   *
FROM
   `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders` AS orders
JOIN
   `project-07f78a79-bb55-4d4e-b12.warehouse_orders.warehouse` warehouse ON orders.warehouse_id = warehouse.warehouse_id


   SELECT
    orders.*,
    warehouse.warehouse_alias,
    warehouse.state
FROM
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders` AS orders
JOIN
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.warehouse` AS warehouse
ON
    orders.warehouse_id = warehouse.warehouse_id;


    SELECT
    COUNT(warehouse.state) as num_states
FROM
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders` AS orders
JOIN
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.warehouse` AS warehouse
ON
    orders.warehouse_id = warehouse.warehouse_id;


    SELECT
    warehouse.state,
    COUNT(DISTINCT orders.order_id) AS num_orders
FROM
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.orders` AS orders
JOIN
    `project-07f78a79-bb55-4d4e-b12.warehouse_orders.warehouse` AS warehouse
ON
    orders.warehouse_id = warehouse.warehouse_id
GROUP BY
    warehouse.state;