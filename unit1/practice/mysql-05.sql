USE angel;
ALTER TABLE alumnos ADD COLUMN procedencia VARCHAR(70);
ALTER TABLE alumnos ADD COLUMN nacionalidad INT(2);

UPDATE alumnos SET procedencia="nacional", nacionalidad=2 WHERE id=1;
UPDATE alumnos SET procedencia="nacional", nacionalidad=1 WHERE id=2;
UPDATE alumnos SET procedencia="extranjero", nacionalidad=2 WHERE id=3;
UPDATE alumnos SET procedencia="extranjero", nacionalidad=1 WHERE id=4;

SELECT procedencia, COUNT(procedencia) AS datos_procedencia FROM alumnos GROUP BY procedencia;

SELECT nacionalidad, COUNT(nacionalidad) AS datos_nacionalidad,  FROM alumnos GROUP BY nacionalidad;


SELECT nacionalidad, (SELECT COUNT(nacionalidad) *100 / COUNT(id) AS t FROM alumnos) as porcentaje
FROM alumnos GROUP BY nacionalidad;

INSERT INTO alumnos VALUES 
(5, 'Angel', 'Hurtado', 'García', 'nacional', 1);

SELECT nacionalidad, COUNT(nacionalidad) *100 / (SELECT COUNT(id) AS t FROM alumnos) as porcentaje
FROM alumnos GROUP BY nacionalidad;