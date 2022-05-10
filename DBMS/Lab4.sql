CREATE TABLE AUTHOR (
    Author_ID VARCHAR(5) PRIMARY KEY,
    Lastname VARCHAR(15) NOT NULL,
    FirstName VARCHAR(15) NOT NULL,
    Email VARCHAR(40),
    City VARCHAR(15),
    Country VARCHAR(15)
);

DESC AUTHOR;


CREATE TABLE BOOK (
    Book_ID VARCHAR(5) PRIMARY KEY CHECK(Book_ID LIKE 'B%'),
    Book_Title VARCHAR(20) NOT NULL,
    Copies int CHECK(Copies > 2)
);

DESC BOOK;


CREATE TABLE AUTHOR_LIST (
    Author_ID VARCHAR(5),
    Book_ID VARCHAR(5),
    Role VARCHAR(15),
    CONSTRAINT pk PRIMARY KEY(Author_ID, Book_ID),
    CONSTRAINT fk1 FOREIGN KEY(Author_ID) REFERENCES AUTHOR(Author_ID),
    CONSTRAINT fk2 FOREIGN KEY(Book_ID) REFERENCES BOOK(Book_ID)
);

DESC AUTHOR_LIST;


INSERT INTO AUTHOR VALUES ('A0001', 'Housel', 'Morgan', 'morganhousel@abc.com', 'CityA', 'CountryA');
INSERT INTO AUTHOR VALUES ('A0002', 'Clear', 'James', 'jamesclear@abc.com', 'CityB', 'CountryB');
INSERT INTO AUTHOR VALUES ('A0003', 'Silberschatz', 'Abraham', 'abrahamsilberschatz@abc.com', 'CityC', 'CountryC');
INSERT INTO AUTHOR VALUES ('A0004', 'Cormen', 'Thomas', 'thomascormen@abc.com', 'CityD', 'CountryD');
INSERT INTO AUTHOR VALUES ('A0005', 'Hopcroft', 'John', 'johnhopcroft@abc.com', 'CityE', 'CountryE');

SELECT * FROM AUTHOR;


INSERT INTO BOOK VALUES ('B0001', 'Psychology of Money', 500);
INSERT INTO BOOK VALUES ('B0002', 'Atomic Habits', 400);
INSERT INTO BOOK VALUES ('B0003', 'DBMS Concepts', 300);
INSERT INTO BOOK VALUES ('B0004', 'Intro to Algorithms', 200);
INSERT INTO BOOK VALUES ('B0005', 'Intro to Automata', 100);

SELECT * FROM BOOK;


INSERT INTO AUTHOR_LIST VALUES ('A0001', 'B0001', 'Author');
INSERT INTO AUTHOR_LIST VALUES ('A0002', 'B0002', 'Author');
INSERT INTO AUTHOR_LIST VALUES ('A0003', 'B0003', 'Co-Author');
INSERT INTO AUTHOR_LIST VALUES ('A0004', 'B0004', 'Co-Author');
INSERT INTO AUTHOR_LIST VALUES ('A0005', 'B0005', 'Co-Author');

SELECT * FROM AUTHOR_LIST;


ALTER TABLE AUTHOR_LIST ADD Publisher VARCHAR(30);

DESC AUTHOR_LIST;