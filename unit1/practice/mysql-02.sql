-- login with mysql -u root -P 3307

USE angel;

SELECT * FROM grades;
SELECT * FROM grades WHERE descr LIKE 'S%';

UPDATE grades SET descr='Super';
UPDATE grades SET class='Otra' WHERE class='Inglés';

CREATE TABLE grades_copy AS
SELECT grade FROM grades;

CREATE VIEW myview AS
SELECT * FROM professors;

SELECT * FROM myview;

INSERT INTO professors VALUES (
    'Arthur', 'MX', 'arthur@outlook.com', 10
);
