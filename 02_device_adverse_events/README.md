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

Answer: Product code BZD (Ventilator, Non-Continuous Respirator) appears most often, with 29 events reported in the dataset. 

Question 2: What are the top five medical devices (by brand name) with highest number of adverse events? 
Query:
SELECT brand_name, COUNT (*) AS total_adverse events
FROM maude_2023
GROUP BY brand_name
ORDER BY total_adverse_events DESC
LIMIT 5; 

Answer: DREAMSTATION AUTO CPAP (13), DYMIC (11), OMNIPOD DASH INSULIN MANAGEMENT SYSTEM (10), PERCLOSE PROSTYLE SUTURE-MEDIATED CLOSURE AND REPAIR SYSTEM (9), ENDOWRIST (8).

Question 3: What are the top 5 manufacturers with highest number of adverse events? 
Query:
SELECT manufacturer, COUNT (*) AS total_adverse events
FROM maude_2023
GROUP BY manufacturer
ORDER BY total_adverse_events DESC
LIMIT 5; 

Answer: BOSTON SCIENTIFIC CORPORATION (84), ST. JUDE MEDICAL INC.(CRM-SYLMAR) (38), RESPIRONICS, INC (30), MEDTRONIC PUERTO RICO OPERATIONS CO. (22), AIZU OLYMPUS CO., LTD (19).

Question 4: How many different types of problems did the patients report due to device problem? 
Query: 
SELECT COUNT (DISTINCT patient_problem) AS distinct_patient_problem
FROM maude_2025;

Answer: 75 distinct problems/effects were reported.
