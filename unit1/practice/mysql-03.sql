USE angel;
CREATE TABLE mytable (
    id INT(4) NOT NULL,
    numemp INT(3) NOT NULL,
    email VARCHAR(120)
);

INSERT INTO mytable VALUES (
    1, NULL, "angel@hey.com"
);

INSERT INTO mytable VALUES (
    1, 1, "angel@hey.com"
);

ALTER TABLE mytable MODIFY email VARCHAR(150) NOT NULL;
