USE test;

CREATE TABLE gente (id INT, nombre VARCHAR(200));

INSERT INTO gente VALUES
(1, "Angel"),
(2, "Eduardo"),
(3, "Hurtado"),
(4, "García");

SELECT * FROM gente;

SELECT @@default_storage_engine;

SELECT @@Autocommit;

ALTER TABLE gente ADD COLUMN dinero DOUBLE;

UPDATE gente SET dinero = 1500 WHERE id = 1;
UPDATE gente SET dinero = 2500 WHERE id = 2;
UPDATE gente SET dinero = 3500 WHERE id = 3;
UPDATE gente SET dinero = 4500 WHERE id = 4;

SET @dinero='1500';
SELECT * FROM gente WHERE dinero = @dinero;

SHOW TABLES;

DESCRIBE gente;

SET @dinero='6500';
SET @id='1';
UPDATE gente SET dinero = @dinero WHERE id = @id;

SET @id='1';
SET @dinero='6500';
SELECT * FROM gente WHERE id = @id AND dinero = @dinero;

SET @quincena='7000';
SET @id='1';
UPDATE gente SET dinero = (dinero + @quincena) WHERE id = @id;

SELECT * FROM gente;
-- Trabajando con variables