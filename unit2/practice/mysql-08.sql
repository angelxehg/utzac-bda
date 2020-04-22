CREATE DATABASE replica;
USE replica;

CREATE TABLE students (
    id INT(2),
    name VARCHAR(50)
);

INSERT INTO students VALUES 
    (1, 'Angel'),
    (2, 'Jennifer'),
    (3, 'Briana'),
    (4, 'Mariana');

-- Para replica:
-- sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
-- binlog_do_db=newdatabase
-- server-id=1
-- log_bin=mysql_bin.log
-- log_bin=/var/log/mysql/mysql-bin.log

GRANT REPLICATION SLAVE ON *.* TO 'jennifer'@'%' IDENTIFIED BY 'utzac';
GRANT REPLICATION SLAVE ON *.* TO 'briana'@'%' IDENTIFIED BY 'utzac';
GRANT REPLICATION SLAVE ON *.* TO 'mariana'@'%' IDENTIFIED BY 'utzac';

SHOW MASTER STATUS;

-- 313
-- 1773

FLUSH PRIVILEGES;
FLUSH TABLES WITH READ LOCK;

-- mysqldump -u root -p --opt newdatabase > newdatabase.sql

UNLOCK TABLES;

-- en slave
-- server-id               = 2
-- relay-log               = /var/log/mysql/mysql-relay-bin.log
-- log_bin                 = /var/log/mysql/mysql-bin.log
-- binlog_do_db            = newdatabase

CHANGE MASTER TO MASTER_HOST='198.168.75.89', MASTER_USER='jennifer', MASTER_PASSWORD='utzac', MASTER_LOG_FILE='mysql-bin.000006', MASTER_LOG_POS=154;

CHANGE MASTER TO MASTER_HOST='198.168.75.89', MASTER_USER='briana', MASTER_PASSWORD='utzac', MASTER_LOG_FILE='mysql-bin.000006', MASTER_LOG_POS=154;

CHANGE MASTER TO MASTER_HOST='198.168.75.89', MASTER_USER='mariana', MASTER_PASSWORD='utzac', MASTER_LOG_FILE='mysql-bin.000006', MASTER_LOG_POS=154;

START SLAVE;

SHOW SLAVE STATUS\G

SET GLOBAL SQL_SLAVE_SKIP_COUNTER = 1; SLAVE START; 

INSERT INTO students VALUES 
    (5, 'Jennifer', '');