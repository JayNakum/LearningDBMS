CREATE TABLE client_master_1(
    CLIENTNO VARCHAR(6) PRIMARY KEY CHECK(CLIENTNO LIKE 'C%'),
    NAME VARCHAR(20) NOT NULL,
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INT(8),
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2)
);

DESC client_master_1;


CREATE TABLE product_master_1 (
    PRODUCTNO VARCHAR(6) PRIMARY KEY CHECK(PRODUCTNO LIKE 'P%'),
    DESCRIPTION VARCHAR(15) NOT NULL,
    PROFITPERCENT DECIMAL(4, 2) NOT NULL,
    UNITMEASURE VARCHAR(10) NOT NULL,
    QTYONHAND INTEGER(8) NOT NULL,
    REORDERLVL INTEGER(8) NOT NULL,
    SELLPRICE DECIMAL(8, 2) NOT NULL,
    COSTPRICE DECIMAL(8, 2) NOT NULL
);

DESC product_master_1;


CREATE TABLE salesman_master_1 (
    SALESMANNO VARCHAR(6) PRIMARY KEY CHECK(SALESMANNO LIKE 'S%'),
    SALESMANNAME VARCHAR(20) NOT NULL,
    ADDRESS1 VARCHAR(30) NOT NULL,
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(20),
    PINCODE INTEGER(8),
    STATE VARCHAR(20),
    SALAMT REAL(8, 2) NOT NULL CHECK(SALAMT <> 0),
    TGTTOGET DECIMAL(6, 2) NOT NULL CHECK(TGTTOGET <> 0),
    YTDSALES DOUBLE(6, 2) NOT NULL,
    REMARKS VARCHAR(60)
);

DESC salesman_master_1;


INSERT INTO client_master_1 VALUES
('C00001', 'Ivan bayross',' ',' ' ,'Mumbai',400054,'Maharashtra',15000.00),
('C00002','Mamta mazumdar',' ',' ','Madras',780001,'Tamilnadu',0),
('C00003','Chhaya bankar',' ',' ','Mumbai',400057,'Maharashtra',5000.00),
('C00004', 'Ashwini joshi',' ',' ','Banglore',560001,'Karnataka',0),
('C00005', 'Hansel colaco',' ',' ','Mumbai',400060,'Maharashtra',2000.00),
('C00006','Deepak Sharma',' ',' ','Manglore',560050,'Karnataka',0);


INSERT INTO product_master_1 VALUES
('P00001','T-Shirt',5,'Piece',200,50,350,250),
('P0345','Shirts',6,'Piece',150,50,500,350),
('P06734','Cotton jeans',5,'Piece',100,20,600,450),
('P07865','Jeans',5,'Piece',100,20,750,500),
('P07868','Trousers',2,'Piece',150,50,850,550),
('P07885','Pull overs',2.5,'Piece',80,30,700,450),
('P07965','Denim Jeans',4,'Piece',100,40,350,250),
('P07975','Lycra tops',5,'Piece',70,30,300,175),
('P08865','Skirts',5,'Piece',75,30,450,300);


INSERT INTO salesman_master_1 VALUES
('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100.00,50,'Good'),
('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200.00,100,'Good'),
('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,100.00,50,'Good'),
('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,150.00,50,'Good');


SELECT * FROM client_master_1;

SELECT * FROM product_master_1;

SELECT * FROM salesman_master_1;
