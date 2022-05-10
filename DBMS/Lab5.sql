CREATE TABLE Supplier(
    scode VARCHAR(5) PRIMARY KEY,
    sname VARCHAR(20) NOT NULL,
    city VARCHAR(20),
    turnover DECIMAL(8,2)
);

DESC Supplier;

CREATE TABLE Part(
    pcode VARCHAR(5) PRIMARY KEY,
    weight INTEGER,
    color VARCHAR(10),
    cost DECIMAL(8,2),
    sellingprice DECIMAL(8,2)
);

DESC Part;

CREATE TABLE Supplier_Part (
    s_code VARCHAR(5),
    p_code VARCHAR(5),
    qty INTEGER NOT NULL,
    PRIMARY KEY(s_code, p_code),
    FOREIGN KEY(s_code) REFERENCES Supplier(scode),
    FOREIGN KEY(p_code) REFERENCES Part(pcode)
);

DESC Supplier_Part;


INSERT INTO Supplier VALUES('1', 'Abc', 'pqr', 123.4);
INSERT INTO Supplier VALUES('2', 'Bcd', 'Qrs', 234.5);
INSERT INTO Supplier VALUES('3', 'Cde', 'Rst', 345.6);
INSERT INTO Supplier VALUES('4', 'Def', 'Tuv', 456.7);
INSERT INTO Supplier VALUES('5', 'Efg', 'Uvw', 567.8);
INSERT INTO Supplier VALUES('6', 'Fgh', 'Tuv', 100.0);

SELECT * from Supplier;


INSERT INTO Part VALUES('1', 25, 'Red', 20, 30);
INSERT INTO Part VALUES('2', 26, 'Blue', 30, 40);
INSERT INTO Part VALUES('3', 27, 'Green', 40, 50);
INSERT INTO Part VALUES('4', 28, 'Cyan', 50, 60);
INSERT INTO Part VALUES('5', 29, 'Purple', 60, 70);

SELECT * from Part;


INSERT INTO Supplier_Part VALUES('1', '5', 10);
INSERT INTO Supplier_Part VALUES('2', '4', 20);
INSERT INTO Supplier_Part VALUES('3', '3', 30);
INSERT INTO Supplier_Part VALUES('4', '2', 40);
INSERT INTO Supplier_Part VALUES('5', '1', 50);

SELECT * from Supplier_Part;



-- QUERY 1 --
SELECT s_code, p_code FROM Supplier_Part ORDER BY s_code;

-- QUERY 2 --
SELECT * FROM Supplier WHERE city = 'Bombay' AND turnover = 50;

-- QUERY 3 --
SELECT COUNT(scode) as Total_Count FROM Supplier; -- COUNT(), COUNT(*) both will work --

-- distict City --
SELECT COUNT(DISTINCT City) as Total_Cities from Supplier;

-- QUERY 4 --
SELECT pcode FROM Part WHERE weight BETWEEN 25 AND 35;
