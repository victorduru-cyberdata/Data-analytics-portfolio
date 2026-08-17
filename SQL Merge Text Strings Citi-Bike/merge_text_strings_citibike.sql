SELECt
   usertype,
   CONCAT(start_station_name, ' to ', end_station_name) AS route,
   COUNT(*) AS num_trips,
   ROUND(AVG(CAST(tripduration AS INT64)/64), 2) AS duration
FROM
   `bigquery-public-data.new_york.citibike_trips`
GROUP BY
   start_station_name,
   end_station_name,
   usertype
ORDER BY
   num_trips DESC
LIMIT 10