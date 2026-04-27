-- Query 1
SELECT c_birth_year, c_birth_country, COUNT(*) AS customer_count
FROM customer
GROUP BY c_birth_year, c_birth_country
ORDER BY c_birth_year;

-- Query 2
SELECT c_birth_country, COUNT(*) 
FROM customer
GROUP BY c_birth_country;

-- Query 3
SELECT COUNT(*) FROM customer;