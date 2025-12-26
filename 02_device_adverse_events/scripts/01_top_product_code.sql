SELECT product_code, COUNT (*) AS total_events
FROM maude_2023 
GROUP BY product_code
ORDER BY total_events DESC
LIMIT 1;
