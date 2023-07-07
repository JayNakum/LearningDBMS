-- QUERY 1 --
SELECT e1.ENAME FROM EMP e1 
INNER JOIN EMP e2 ON e2.ENAME = 'Blake' AND e1.SAL > e2.SAL;


-- QUERY 2 --
SELECT e1.ENAME FROM EMP e1 
INNER JOIN EMP e2 ON e2.ENAME = 'Allen' AND e1.JOB = e2.JOB;
-- WHERE e1.ENAME <> 'Allen';


-- QUERY 3 --
SELECT e1.ENAME FROM EMP e1
INNER JOIN EMP e2 ON e2.ENAME IN('Ford', 'Smith') AND e1.SAL = e2.SAL
-- WHERE e1.ENAME NOT IN('Ford', 'Smith')
ORDER BY e1.ENAME DESC;


-- QUERY 4 --
SELECT DISTINCT e1.ENAME FROM EMP e1
INNER JOIN EMP e2 ON (e1.JOB = e2.JOB AND e2.ENAME = 'Miller')
OR (e1.SAL > e2.SAL AND e1.ENAME = 'Allen');
-- WHERE e1.ENAME <> 'Allen' AND e1.ENAME <> 'Miller';


-- QUERY 5 --
SELECT e.ENAME FROM EMP e 
INNER JOIN DEPT ON (e.DEPTNO = DEPT.DEPTNO AND DEPT.DNAME = 'Sales'
AND e.SAL = (SELECT MAX(maxSal) FROM
(SELECT e1.SAL AS maxSal FROM EMP e1
INNER JOIN DEPT ON (e1.DEPTNO = DEPT.DEPTNO AND DEPT.DNAME = 'Sales')) AS T));


-- QUERY 6 --
select e.ename from emp e, (select max(e2.HIREDATE) as m from emp e1, emp e2 where e1.emp_no = e2.mgr and e1.ename = 'KING')Y where e.hiredate < Y.m;

-- QUERY 7 --
select ename from emp, (select dept_no, max(sal) as s from emp group by dept_no)Y where emp.dept_no = Y.dept_no and emp.sal = Y.s;

-- QUERY 8 --
select ename from emp, (select ((max(sal) + min(sal))/2) as s from emp)X where emp.sal = X.s;

-- QUERY 9 --
select e1.ename from emp e1, emp e2 where e1.HIREDATE = e2.HIREDATE and e1.dept_no <> e2.dept_no;

-- QUERY 10 --
select e2.ename from emp e1, emp e2 where e1.emp_no = e2.mgr and e1.hiredate > e2.hiredate;
