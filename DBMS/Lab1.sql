CREATE TABLE CLIENT_MASTER(
    CLIENTNO VARCHAR(6),
    NAME VARCHAR(20),
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INT(6),
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2)
);

DESC CLIENT_MASTER;


CREATE TABLE PRODUCT_MASTER(
    PRODUCTNO VARCHAR(6),
    DESCRIPTION VARCHAR(15),
    PROFITPERCENT DECIMAL(4,2),
    UNIT_MEASURE VARCHAR(10),
    QTYONHAND INT,
    REORDERL_VL INT,
    SELLPRICE DECIMAL(8,2),
    COSTPRICE DECIMAL(8,2)
);

DESC PRODUCT_MASTER;


CREATE TABLE SALESMAN_MASTER(
    SALESMANNO VARCHAR(6),
    SALESMANNAME VARCHAR(20),
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(20),
    PINCODE INT,
    STATE VARCHAR(20),
    SALAMT real,
    TGTTOGET DECIMAL,
    YTDSALES double(6,2),
    REMARKS VARCHAR(60)
);

DESC SALESMAN_MASTER;


INSERT INTO CLIENT_MASTER VALUES
('C00001', 'Ivan bayross',' ',' ' ,'Mumbai',400054,'Maharashtra',15000.00),
('C00002','Mamta mazumdar',' ',' ','Madras',780001,'Tamilnadu',0),
('C00003','Chhaya bankar',' ',' ','Mumbai',400057,'Maharashtra',5000.00),
('C00004', 'Ashwini joshi',' ',' ','Banglore',560001,'Karnataka',0),
('C00005', 'Hansel colaco',' ',' ','Mumbai',400060,'Maharashtra',2000.00),
('C00006','Deepak Sharma',' ',' ','Manglore',560050,'Karnataka',0);

SELECT * FROM CLIENT_MASTER;


INSERT INTO PRODUCT_MASTER VALUES
('P00001','T-Shirt',5,'Piece',200,50,350,250),
('P0345','Shirts',6,'Piece',150,50,500,350),
('P06734','Cotton jeans',5,'Piece',100,20,600,450),
('P07865','Jeans',5,'Piece',100,20,750,500),
('P07868','Trousers',2,'Piece',150,50,850,550),
('P07885','Pull overs',2.5,'Piece',80,30,700,450),
('P07965','Denim Jeans',4,'Piece',100,40,350,250),
('P07975','Lycra tops',5,'Piece',70,30,300,175),
('P08865','Skirts',5,'Piece',75,30,450,300);

SELECT * FROM PRODUCT_MASTER;


INSERT INTO SALESMAN_MASTER VALUES
('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100.00,50,'Good'),
('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200.00,100,'Good'),
('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,100.00,50,'Good'),
('S00004','Ashish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,150.00,50,'Good');

SELECT * FROM SALESMAN_MASTER;
