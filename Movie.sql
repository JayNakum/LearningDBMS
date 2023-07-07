CREATE TABLE actor(
act_id INT PRIMARY KEY,
act_fname VARCHAR(20),
act_lname VARCHAR(20),
act_gender VARCHAR(11));

CREATE TABLE movie(
mov_id INT PRIMARY KEY,
mov_title VARCHAR(50),
mov_year INT,
mov_time INT,
mov_lang VARCHAR(50),
mov_dt_rel date,
mov_rel_country VARCHAR(5));

CREATE TABLE movie_cast(
act_id INT,
mov_id INT,
role VARCHAR(50),
FOREIGN KEY (act_id) REFERENCES actor(act_id),
FOREIGN KEY (mov_id) REFERENCES movie(mov_id));

INSERT INTO actor VALUES(1, 'akshay', 'kumar','M');
INSERT INTO actor VALUES(2, 'katrina', 'kaif','f');
INSERT INTO actor VALUES(3, 'vicky', 'kaushal','M');
INSERT INTO actor VALUES(4, 'tom', 'cruise','M');
INSERT INTO actor VALUES(5, 'robert', 'downey','M');

INSERT INTO movie VALUES(101, 'baby',2015,130,'hindi','2015-05-15','india');
INSERT INTO movie VALUES(101, 'iron man',2011,90,'English','2011-11-15','usa');
INSERT INTO movie VALUES(102, 'thor',2012,140,'English','2012-09-11','usa');
INSERT INTO movie VALUES(103, 'Sooryavanshi',2021,120,'hindi','2021-11-15','india');
INSERT INTO movie VALUES(104, 'uri',2019,160,'hindi','2019-05-15','india');
INSERT INTO movie VALUES(105, 'The Mummy',2017,180,'hindi','2015-05-15','india');

INSERT INTO movie_cast VALUES(1,101,'Hero');
INSERT INTO movie_cast VALUES(1,102,'Side Role');
INSERT INTO movie_cast VALUES(2,103,'COmedian');
INSERT INTO movie_cast VALUES(3,104,'Heroine');
INSERT INTO movie_cast VALUES(2,104,'Hero');
INSERT INTO movie_cast VALUES(4,105,'Negative role');
INSERT INTO movie_cast VALUES(3,103,'Protoganist');

SELECT * FROM movie NATURAL JOIN movie_cast NATURAL JOIN actor;

SELECT act_fname , act_lname FROM actor WHERE act_id IN (SELECT act_id FROM movie_cast WHERE mov_id IN (SELECT mov_id FROM movie WHERE mov_lang='Hindi') and role='Hero');

SELECT act_id FROM movie_cast WHERE mov_id IN(SELECT mov_id FROM movie WHERE mov_time>=120);

SELECT act_fname, act_lname FROM actor WHERE act_id not IN (SELECT act_id FROM movie_cast WHERE mov_id = (Select mov_id FROM movie WHERE mov_title ='XYZ2'));
