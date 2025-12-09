Medical Device Adverse Events Analysis (SQL)

This project uses FDA MAUDE open data ( 1 Jan 2023 – 1 Jan 2024, 500 records) to explore device safety.

Queries included
- Counts by device type
- Top manufacturers by reports
- Trends over time
- Outcomes by device type

Question 1: Which product code appears the most? 
Query:
SELECT product_code, COUNT (*) AS total_events
FROM maude_2023
GROUP BY product_code 
ORDER BY total_events DESC
LIMIT 1;
Answer: Product code BZD appears most often, with 29 events reported in the dataset. 

