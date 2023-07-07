CREATE TABLE person(
    personID varchar(20) PRIMARY KEY,
    personName varchar(20)
);

DESC person;

INSERT INTO person values('p0001', 'abc');
INSERT INTO person values('p0002', 'bcd');
INSERT INTO person values('p0003', 'cde');
INSERT INTO person values('p0004', 'def');
INSERT INTO person values('p0005', 'efg');

SELECT * FROM person;


CREATE TABLE house(
    houseID varchar(20) PRIMARY KEY,
    houseName varchar(20),
    ownerID VARCHAR(20),
    FOREIGN KEY(ownerID) REFERENCES person(personID)
);

DESC house;

INSERT INTO house values('h0001', 'pqr', 'p0003');
INSERT INTO house values('h0002', 'qrs', 'p0002');
INSERT INTO house values('h0003', 'rst', 'p0002');
INSERT INTO house values('h0004', 'tuv', 'p0005');
INSERT INTO house values('h0005', 'uvw', 'p0001');
INSERT INTO house values('h0006', 'wxy', 'p0004');
INSERT INTO house values('h0007', 'xyz', 'p0001');

SELECT * FROM house;
