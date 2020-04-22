-- desde VM
SELECT Host, User FROM user;
SHOW GRANTS FOR angel;

USE mysql;
CREATE USER 'eduardo'@'localhost' IDENTIFIED BY 'utzac';
SELECT Host, User FROM user;

SHOW GRANTS FOR eduardo@localhost;
GRANT SELECT ON angel.alumnos TO 'eduardo'@'localhost' IDENTIFIED BY 'utzac';
SHOW GRANTS FOR eduardo@localhost;

-- EXTERNOS
CREATE USER jennifer IDENTIFIED BY 'utzac';
CREATE USER briana IDENTIFIED BY 'utzac';
CREATE USER mariana IDENTIFIED BY 'utzac';
GRANT SELECT ON angel.alumnos TO jennifer IDENTIFIED BY 'utzac';
GRANT SELECT ON angel.alumnos TO briana IDENTIFIED BY 'utzac';
GRANT SELECT ON angel.alumnos TO mariana IDENTIFIED BY 'utzac';