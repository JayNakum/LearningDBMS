--QUERY 6--
SELECT * FROM EMP 
WHERE HIREDATE = (SELECT min(HIREDATE) FROM EMP 
WHERE MGR IN (SELECT EMP_NO FROM EMP 
WHERE ENAME = 'KING'));

--QUERY 7--
SELECT e.ENAME, e.DEPTNO from EMP e, 
(SELECT DEPTNO AS d, MAX(SAL) AS m FROM EMP 
GROUP BY DEPTNO) AS y
WHERE e.SAL = y.m AND e.DEPTNO = y.d;

--QUERY 8--
SELECT * FROM EMP 
WHERE SAL = (SELECT (MAX(SAL) + MIN(SAL))/2 FROM EMP);

--QUERY 9--
SELECT * FROM EMP e 
WHERE HIREDATE IN (SELECT HIREDATE FROM EMP 
WHERE e.EMP_NO <> EMP_NO);

SELECT e1.* FROM EMP e1, EMP e2 
WHERE e1.HIREDATE = e2.HIREDATE 
AND e1.EMP_NO <> e2.EMP_NO;

--QUERY 10--
SELECT * FROM EMP e 
WHERE HIREDATE < (SELECT HIREDATE FROM EMP 
WHERE EMP_NO = e.MGR) 
AND JOB <> 'MANAGER';
