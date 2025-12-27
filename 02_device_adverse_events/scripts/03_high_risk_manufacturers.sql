SELECT m.manufacturer, COUNT (*) AS total_events
FROM maude_2023 AS m
INNER JOIN device_types AS d 
ON m.product_code = d.productcode 
WHERE d.deviceclass = '3'
GROUP BY m.manufacturer 
ORDER BY total_events DESC;
