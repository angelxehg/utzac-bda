USE test;

SET @prestamo='1500';
SET @presta_id='1';
SET @recibe_id='2';

UPDATE gente SET dinero = (dinero - @prestamo) WHERE id = @presta_id;
UPDATE gente SET dinero = (dinero + @prestamo) WHERE id = @recibe_id;
