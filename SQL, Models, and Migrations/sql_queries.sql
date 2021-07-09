-- Create sql file
touch flights.sql

-- Open sql file
sqlite3 flights.sql

-- Create flights table
CREATE TABLE flights ( 
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    origin TEXT NOT NULL,
    destination TEXT NOT NULL,
    duration INTEGER NOT NULL
);

-- View current tables
.tables

-- View all data from flights table
SELECT * FROM flights;

-- Insert data into flights table
INSERT INTO flights (origin, destination, duration) VALUES ("New York", "London", 415);
INSERT INTO flights (origin, destination, duration) VALUES ("Shanghai", "Paris", 760);
INSERT INTO flights (origin, destination, duration) VALUES ("Istanbul", "Tokyo", 700);
INSERT INTO flights (origin, destination, duration) VALUES ("New York", "Paris", 435);
INSERT INTO flights (origin, destination, duration) VALUES ("Moscow", "Paris", 245);
INSERT INTO flights (origin, destination, duration) VALUES ("Lima", "New York", 455);

-- Formatting output of sql queries
.mode columns
.headers yes

-- Query flights with origin New York
SELECT * FROM flights WHERE origin="New York";

-- Query flights with duration > 500
SELECT * FROM flights WHERE duration > 500;

-- Query flights with duration > 500 destined for Paris
SELECT * FROM flights WHERE duration > 500 AND destination="Paris";

-- Query flights with either duration > 500 or destined for Paris
SELECT * FROM flights WHERE duration > 500 OR destination="Paris";

-- Query flights where origin in specified cities
SELECT * FROM flights WHERE origin IN ("New York","Lima");

-- Query flights to match pattern with LIKE clause
SELECT * FROM flights WHERE origin LIKE '%a%';

-- Query to update flight duration satisfying consitions
UPDATE flights
    SET duration = 430
    WHERE origin = "New York" 
    AND destination = "London";

-- Query to delete flight record satisfying consitions
DELETE FROM flights WHERE destination = "Tokyo";

-- Query to view limited data from flights table
SELECT * FROM flights LIMIT 5;

-- Query to view data from flights table ordered by origin, duration descending
SELECT * FROM flights ORDER BY origin;
SELECT * FROM flights ORDER BY duration DESC;

-- Query to view limited data from flights table
SELECT * FROM flights GROUP BY origin HAVING COUNT(origin) > 1;
