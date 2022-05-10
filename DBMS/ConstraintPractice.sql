CREATE TABLE Department (
    Dno INT PRIMARY KEY,
    Dname VARCHAR(25)
);

CREATE TABLE Branch (
    Bcode INT PRIMARY KEY,
    Bname VARCHAR(25),
    Dno INT,
    FOREIGN KEY(Dno) REFERENCES Department(Dno)
);

CREATE TABLE Student (
    Rollno INT PRIMARY KEY,
    Name VARCHAR(25),
    Dob DATE,
    Gender VARCHAR(6) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Doa DATE CHECK (Doa <= GETDATE()),
    Bcode INT,
    FOREIGN KEY(Bcode) REFERENCES Branch(Bcode)
);

CREATE TABLE Course (
    Ccode INT PRIMARY KEY,
    Cname VARCHAR(25),
    Credits INT,
    Dno INT,
    FOREIGN KEY(Dno) REFERENCES Department(Dno)
);

CREATE TABLE Branch_Course (
    Bcode INT,
    Ccode INT,
    Semester INT,
    PRIMARY KEY(Bcode, Ccode),
    FOREIGN KEY(Bcode) REFERENCES Branch(Bcode),
    FOREIGN KEY(Ccode) REFERENCES Cource(Ccode)
);

CREATE TABLE Enrolls (
    Rollno INT,
    Ccode INT,
    Sess VARCHAR(20),
    Grade VARCHAR(1) CHECK(Grade IN ('S', 'A', 'B', 'C', 'D', 'E', 'U')),
    PRIMARY KEY(Rollno, Ccode, Sess),
    FOREIGN KEY(Rollno) REFERENCES Student(Rollno)
    FOREIGN KEY(Ccode) REFERENCES Cource(Ccode)
);
