-- Create database
CREATE DATABASE transactions;

-- Create table
CREATE TABLE people(
    id INT,
    name VARCHAR(100),
    wealth DOUBLE,
    nationality VARCHAR(30)
);

-- Create addpeople procedure
DELIMITER ##
CREATE PROCEDURE addpeople(person_id INT, person_name VARCHAR(100), person_wealth DOUBLE, person_nationality VARCHAR(30))
BEGIN
INSERT INTO people(id, name, wealth, nationality) VALUES (person_id, person_name, person_wealth, person_nationality);
END ##
DELIMITER ;

-- Run addpeople procedure
CALL addpeople(1, "Angel", 1000.0, "México");

-- Select all from people
SELECT * FROM people;

-- Create removepeople procedure
DELIMITER ##
CREATE PROCEDURE removepeople(person_id INT)
BEGIN
DELETE FROM people WHERE id=person_id;
END ##
DELIMITER ;

-- Run removepeople procedure
CALL removepeople(1);

-- Select all from people
SELECT * FROM people;

-- Select all procedures
SELECT name FROM mysql.proc WHERE db = database();

-- Drop procedure
DROP PROCEDURE addpeople;

-- Procedure to lend money
DELIMITER ##
CREATE PROCEDURE lend(from_person_id INT, amount DOUBLE, to_person_id INT)
BEGIN
DECLARE from_capital DOUBLE DEFAULT 0.0;
DECLARE to_capital DOUBLE DEFAULT 0.0;
SET from_capital = (SELECT wealth FROM people WHERE id=from_person_id LIMIT 1);
SET to_capital = (SELECT wealth FROM people WHERE id=to_person_id LIMIT 1);
IF from_capital >= amount THEN
    UPDATE people SET wealth = (wealth - amount) WHERE id = from_person_id;
    UPDATE people SET wealth = (wealth + amount) WHERE id = to_person_id;
    SELECT "Prestamo exitoso" AS msg;
ELSE
    SELECT "Error en prestamo" AS error;
END IF;
END ##
DELIMITER ;

-- Call procedure (lend 100 to [2] from [1])
CALL lend(1, 100, 2);
