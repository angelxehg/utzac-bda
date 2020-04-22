SHOW DATABASES;
USE mysql
SHOW TABLES;
DESCRIBE user;

SELECT Host, User FROM user;

CREATE USER angel;
SELECT Host, User FROM user;
SHOW GRANTS FOR angel;

-- mysql -u angel -P 3307
SHOW DATABASES;

-- mysql -u root -P 3307


-- GRANT (cuales privilegios) ON (donde, en qué) TO (a quíen) IDENTIFIED BY (contraseña);

GRANT SELECT ON angel.alumnos TO angel IDENTIFIED BY '1234';