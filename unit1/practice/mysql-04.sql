USE angel;
SELECT * FROM grades;
SELECT COUNT(class) FROM grades;
SELECT AVG(grade) FROM grades;
SELECT MIN(grade) FROM grades;
SELECT MAX(grade) FROM grades;
SELECT SUM(grade) FROM grades;

-- Práctica
INSERT INTO grades
VALUES ('Hey 1', 'SuperB', 8),
('Hey 2', 'SuperC', 8),
('Hey 1', 'SuperD', 8);
SELECT COUNT(class) FROM grades;
SELECT COUNT(class) FROM grades WHERE grade = 8;
SELECT COUNT(class) FROM grades WHERE grade = 9;
SELECT COUNT(class) FROM grades WHERE grade = 10;
SELECT COUNT(class), AVG(grade) FROM grades WHERE descr LIKE '%Super%';
SELECT AVG(grade) FROM grades WHERE descr LIKE '%B%';
SELECT AVG(grade), MAX(grade), MIN(grade) FROM grades WHERE descr LIKE '%B%';
SELECT COUNT(grade), SUM(grade) FROM grades;
SELECT COUNT(name) FROM professors;
SELECT COUNT(grade), AVG(grade), MAX(grade), MIN(grade) FROM professors;
SELECT COUNT(grade), AVG(grade), MAX(grade), MIN(grade) FROM professors WHERE name LIKE '%A%';

SELECT COUNT(class) AS count, AVG(grade) AS avg, MAX(grade) AS max, MIN(grade) AS min FROM grades;
SELECT COUNT(class) AS count, SUM(grade) AS sum, AVG(grade) AS avg, MAX(grade) AS max, MIN(grade) AS min FROM grades;

CREATE TABLE alumnos (
    id INT(2),
    name VARCHAR(50),
    p_lastname VARCHAR(10),
    m_lastname VARCHAR(50)
);

INSERT INTO alumnos VALUES 
(1, 'Angel', 'Hurtado', 'García'),
(2, 'Eduardo', 'Hurtado', 'García'),
(3, 'Angel', 'García', 'Hurtado'),
(4, 'Eduardo', 'García', 'Hurtado');

SELECT id AS ID, name AS NOMBRE, p_lastname AS APELLIDOP, m_lastname AS APELLIDOM FROM alumnos;

CREATE VIEW estadogrupo AS
SELECT COUNT(class) AS count, SUM(grade) AS sum, AVG(grade) AS avg, MAX(grade) AS max, MIN(grade) AS min, STD(grade) AS std, VARIANCE(grade) AS var FROM grades;
