-- QUERY 5 --
SELECT scode FROM Supplier WHERE turnover IS null;

-- QUERY 6 --
SELECT pcode FROM Part WHERE cost IN (20,30,40);

-- QUERY 7 --
SELECT sum(qty) FROM Supplier_Part WHERE p_code = '2';

-- QUERY 8 --
SELECT sname FROM Supplier WHERE Scode IN (SELECT s_code FROM Supplier_Part WHERE p_code = '2');

-- QUERY 9 --
SELECT pcode FROM Part WHERE cost > (SELECT avg(cost) FROM Part);

-- QUERY 10 --
SELECT Scode,turnover FROM Supplier ORDER BY turnover DESC;
