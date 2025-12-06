-- Count patients by diagnosis
SELECT diagnosis, COUNT(*) 
FROM patients 
GROUP BY diagnosis;

-- Average age by sex
SELECT sex, AVG(age) 
FROM patients 
GROUP BY sex;

-- List all patients over 50
SELECT patient_id, age, diagnosis
FROM patients
WHERE age > 50;
