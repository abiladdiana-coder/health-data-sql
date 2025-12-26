SELECT manufacturer, COUNT (*) AS total_adverse events
FROM maude_2023
GROUP BY manufacturer
ORDER BY total_adverse_events DESC
LIMIT 5; 
