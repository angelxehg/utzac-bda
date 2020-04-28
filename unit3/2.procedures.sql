-- Diferent ways to make stored procedures

-- Create procedure with case
DELIMITER ##
CREATE PROCEDURE canPersonLend(person_id INT)
BEGIN
SET @wealth = (SELECT wealth FROM people WHERE id = person_id);
CASE
    WHEN (@wealth > 100000 AND @wealth < 200000) THEN
        SELECT "Person can make big loans" as result;
    WHEN @wealth > 100000 THEN
        SELECT "Person can make huge loans" as result;
    ELSE
        SELECT "Person can't make any loans" as result;
END CASE;
END ##
DELIMITER ;

-- Call procedure
CALL canPersonLend(5);

-- Create procedure with while
DELIMITER ##
CREATE PROCEDURE whileTest()
BEGIN
SET @i = 0;
WHILE @i < 5 DO
    SELECT name, wealth FROM people WHERE id=@i;
    SET @i = (@i + 1);
END WHILE;
END ##
DELIMITER ;

-- Call procedure
CALL whileTest();

-- Create procedure with repeat
DELIMITER ##
CREATE PROCEDURE repeatTest()
BEGIN
SET @i = 0;
REPEAT
    SELECT name, wealth FROM people WHERE id=@i;
    SET @i = @i + 1;
UNTIL @i > 5
END REPEAT;
END ##
DELIMITER ;

-- Call procedure
CALL repeatTest();
