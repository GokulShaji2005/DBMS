CREATE TABLE BANK1(
bank_id INT PRIMARY KEY,
bank_name varchar(72),
headOffice varchar(72),
branch VARCHAR(72),
branch_code INT
);

INSERT INTO BANK1 VALUES (1, 'State Bank of India', 'Mumbai', 'Muvattupuzha', 1001);
INSERT INTO BANK1 VALUES (2, 'Federal Bank', 'Chennai','Aluva',1002);
INSERT INTO BANK1 VALUES (3, 'Kerala Gramin Bank', 'Kolkata', 'Perumbavoor', 1003);
INSERT INTO BANK1 VALUES (4, 'Canara Bank', 'Bangalore', 'Kochi', 1004);
INSERT INTO BANK1 VALUES (5, 'South Indian Bank', 'Hyderabad', 'Ernakulam', 1005);

Select * from bank1;
COMMIT;
SAVEPOINT SP1;
DELETE FROM BANK1 WHERE bank_id=2;
SELECT * FROM BANK1;
ROLLBACK TO SP1;
SELECT * FROM BANK1;

DELETE FROM BANK1 WHERE bank_id=3;
SAVEPOINT  SP1;
SELECT * FROM BANK1;
DELETE FROM BANK1 WHERE bank_id=1;
SELECT * FROM BANK1;

ROLLBACK TO SP1;
SELECT * FROM BANK1;

rollback;
SELECT * FROM BANK1;
