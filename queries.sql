--Q1--
SELECT * FROM owners LEFT JOIN vehicles on owners.id = vehicles.owner_id;

--Q2--
SELECT first_name, last_name, COUNT(*) AS count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
ORDER BY first_name ASC;

--Q3--
SELECT first_name, last_name, CAST(AVG(price) AS INT) AS average_price, COUNT(*) AS count
FROM owners
JOIN vehicles
ON owners.id = vehicles.owner_id
GROUP BY first_name, last_name
HAVING COUNT(*) > 1 AND AVG(price) > 10000
ORDER BY first_name DESC;