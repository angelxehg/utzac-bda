-- login with mysql -u root -P 3307

CREATE DATABASE angel;
USE angel;
CREATE TABLE grades (
    class VARCHAR(100),
    descr VARCHAR(100),
    grade INT(2)
);
CREATE TABLE professors (
    name VARCHAR(50),
    last VARCHAR(50),
    email VARCHAR(100),
    grade INT(2)
);
DESCRIBE angel;
INSERT INTO grades VALUES (
    'Estadística', 'diez', 10
);
INSERT INTO grades VALUES (
    'Inglés', 'diez', 10
);
INSERT INTO grades VALUES (
    'Bases de Datos', 'diez', 10
);
INSERT INTO grades VALUES (
    'Redes Convergentes', 'diez', 10
);
INSERT INTO grades VALUES (
    'Administración Proyectos', 'diez', 10
);
INSERT INTO grades VALUES (
    'Planeación', 'diez', 10
);
SELECT * FROM grades;
SELECT * FROM grades ORDER BY grade;
DELETE FROM grades WHERE class = 'Estadística';
INSERT INTO grades VALUES (
    'Estadística', 'nueve', 9
);
SELECT COUNT(class) FROM `grades`;
SELECT `grades` FROM `grades`;
SELECT AVG(grade) FROM `grades`;