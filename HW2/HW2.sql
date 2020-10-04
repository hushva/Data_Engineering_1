-- Exercise 1 - What state figures in the 145th line of our database?
SELECT state FROM birdstrikes LIMIT 144,1;
-- Answer: Tennessee

-- Exercise 2 - What is flight_date of the latest birstrike in this database?
SELECT MAX(flight_date) FROM birdstrikes; -- OR
SELECT flight_date FROM birdstrikes ORDER BY 1 desc LIMIT 1;
-- Answer: 2000-04-18

-- Exercise 3 - What was the cost of the 50th most expensive damage?
SELECT cost FROM birdstrikes ORDER BY 1 DESC LIMIT 49,1;
-- Answer: 6014

-- Exercise 4 - What state figures in the 2nd record, if you filter out all records which have no state and no bird_size specified?
SELECT state FROM birdstrikes
WHERE length(bird_size) != 0
AND length(state) != 0
LIMIT 1,1;
-- Answer: Colorado

-- Exercise 5 - How many days elapsed between the current date and the flights happening in week 52, for incidents from Colorado? (Hint: use NOW, DATEDIFF, WEEKOFYEAR)
SELECT datediff(CURDATE(),flight_date) as days FROM birdstrikes
WHERE weekofyear(flight_date)=52 AND state LIKE 'Colorado'
-- Answer: 7582 days elapsed since the incident in Colorado on week 52