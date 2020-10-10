-- Exercise 1
SELECT aircraft, airline, cost,
	IF((speed IS NULL OR speed < 100),"LOW SPEED","HIGH SPEED") as speed_rate
FROM  birdstrikes
order by speed_rate;

-- Exercise 2 - How many distinct 'aircraft' we have in the database? 
SELECT count(DISTINCT(aircraft)) FROM birdstrikes;
-- Answer: 3

-- Exercise 3 - What was the lowest speed of aircrafts starting with 'H'
SELECT MIN(speed) FROM birdstrikes
WHERE aircraft LIKE 'H%';
-- OR
SELECT speed FROM birdstrikes
WHERE aircraft LIKE 'H%'
order by speed asc
LIMIT 1;
-- Answer: 9

-- Exercise 4 - Which phase_of_flight has the least of incidents?
SELECT phase_of_flight, count(*) FROM birdstrikes
group by phase_of_flight
order by 2 asc
LIMIT 1;
-- Answer: Taxi


-- Exercise_5 - What is the rounded highest average cost by phase_of_flight?
SELECT phase_of_flight,ROUND(AVG(cost)) as cost FROM birdstrikes
GROUP BY phase_of_flight
ORDER BY 2 desc
LIMIT 1;
-- Answer: 54673


-- Exercise_6 - What is the highest AVG speed of the states with names less than 5 characters?
SELECT state, AVG(speed) as avg_speed FROM birdstrikes
WHERE length(state) < 5 AND state != ' '
group by state
ORDER BY 2 desc
LIMIT 1;
-- Answer: 2862.5000
