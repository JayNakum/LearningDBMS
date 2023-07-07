CREATE TABLE Sailors (
    SID VARCHAR(5) PRIMARY KEY,
    Sname VARCHAR(25),
    Rating INTEGER CHECK(Rating <= 10),
    Age INTEGER CHECK(Age > 10)
);

DESC Sailors;


CREATE TABLE Boats (
    BID VARCHAR(5) PRIMARY KEY,
    Bname VARCHAR(25),
    Color VARCHAR(20)
);

DESC Boats;


CREATE TABLE Reserve (
    SID VARCHAR(5),
    BID VARCHAR(5),
    Day VARCHAR(20) NOT NULL,
    PRIMARY KEY (SID, BID),
    FOREIGN KEY (SID) REFERENCES Sailors(SID),
    FOREIGN KEY (BID) REFERENCES Boats(BID)
);

DESC Reserve;


INSERT INTO Sailors VALUES ('S01', 'ABC', 7, 25);
INSERT INTO Sailors VALUES ('S02', 'BCD', 5, 25);
INSERT INTO Sailors VALUES ('S03', 'CDE', 8, 25);
INSERT INTO Sailors VALUES ('S04', 'DEF', 4, 25);
INSERT INTO Sailors VALUES ('S05', 'EFG', 6, 25);

SELECT * FROM Sailors;


INSERT INTO Boats VALUES ('B01', 'Toofan', 'black');
INSERT INTO Boats VALUES ('B02', 'Queeen', 'purple');
INSERT INTO Boats VALUES ('B03', 'Light', 'gold');
INSERT INTO Boats VALUES ('B04', 'Speeedy', 'white');
INSERT INTO Boats VALUES ('B05', 'Safari', 'red');

SELECT * FROM Boats;


INSERT INTO Reserve VALUES ('S01', 'B05', 'Monday');
INSERT INTO Reserve VALUES ('S02', 'B04', 'Tuesday');
INSERT INTO Reserve VALUES ('S03', 'B03', 'Wednesday');
INSERT INTO Reserve VALUES ('S04', 'B02', 'Thursday');
INSERT INTO Reserve VALUES ('S05', 'B01', 'Friday');

SELECT * FROM Reserve;


SELECT Sname FROM Sailors 
    INNER JOIN (Reserve INNER JOIN Boats ON Reserve.BID = Boats.BID) ON Reserve.SID = Sailors.SID 
    WHERE Boats.Color IN ('red', 'green');

SELECT Sname FROM Sailors
    INNER JOIN (Reserve INNER JOIN Boats ON Reserve.BID = Boats.BID) ON Reserve.SID = Sailors.SID 
    WHERE Sailors.Age > 20 Boats.Color = 'black';

# EXCEPT KEYWORD

SELECT Sname FROM Sailors
    INNER JOIN (Reserve INNER JOIN Boats ON Reserve.BID = Boats.BID) ON Reserve.SID = Sailors.SID 
    WHERE Reserve.Day = 'Monday' > 20 Boats.Color = 'green';

SELECT Sname FROM Sailors WHERE Rating > 6 AND Age BETWEEN 20 AND 40;

SELECT BID FROM Boats WHERE Color IN('red', 'blue', 'black', 'white');
