-- DBMS Lab Experiment 2: Advanced SQL Queries and Execution Plans
-- Prerequisite: execute 01_experiment_1_schema.sql first.
USE CompanyDB;

SELECT e.Emp_ID,
       e.Emp_Name,
       e.Job_Title,
       d.Dept_Name
FROM Employee e
INNER JOIN Department d
ON e.Dept_ID = d.Dept_ID;

SELECT d.Dept_ID,
       d.Dept_Name,
       e.Emp_Name
FROM Department d
LEFT JOIN Employee e
ON d.Dept_ID = e.Dept_ID;

SELECT e1.Emp_Name AS Employee_1,
       e2.Emp_Name AS Employee_2,
       e1.Dept_ID
FROM Employee e1
INNER JOIN Employee e2
ON e1.Dept_ID = e2.Dept_ID
AND e1.Emp_ID < e2.Emp_ID;

SELECT e.Emp_Name,
       d.Dept_Name,
       p.Project_Name
FROM Employee e
INNER JOIN Department d
ON e.Dept_ID = d.Dept_ID
INNER JOIN Employee_Project ep
ON e.Emp_ID = ep.Emp_ID
INNER JOIN Project p
ON ep.Project_ID = p.Project_ID;

SELECT e.Emp_ID,
       e.Emp_Name,
       e.Salary,
       e.Dept_ID
FROM Employee e
WHERE e.Salary > (
    SELECT AVG(e2.Salary)
    FROM Employee e2
    WHERE e2.Dept_ID = e.Dept_ID
);

SELECT d.Dept_ID,
       d.Dept_Name
                               DBMS Lab – Experiment 2 | Advanced SQL Queries and Execution Plans
<PARSED TEXT FOR PAGE: 3 / 8>
FROM Department d
WHERE EXISTS (
    SELECT 1
    FROM Employee e
    WHERE e.Dept_ID = d.Dept_ID
      AND e.Salary > 100000
);

SELECT a.Emp_ID,
        a.Emp_Name
FROM
(
     SELECT Emp_ID, Emp_Name
     FROM Employee
     WHERE Salary > 80000
) a
INNER JOIN
(
     SELECT Emp_ID, Emp_Name
     FROM Employee
     WHERE Dept_ID IN (1, 4)
) b
ON a.Emp_ID = b.Emp_ID;

SELECT e.Emp_ID,
       e.Emp_Name
FROM Employee e
WHERE e.Salary > 80000
AND NOT EXISTS (
    SELECT 1
    FROM Employee e2
    WHERE e2.Emp_ID = e.Emp_ID
      AND e2.Dept_ID = 3
);

EXPLAIN displays how MySQL plans to execute a SELECT statement. Important columns include type, possible_keys,
key, rows, and Extra. The actual execution plan should be recorded from the student's MySQL environment because it
can vary with indexes, statistics, data volume, and MySQL version.

Query 1: EXPLAIN for a simple selection

EXPLAIN
SELECT *
FROM Employee
WHERE Salary > 90000;

EXPLAIN
SELECT e.Emp_Name,
        d.Dept_Name
FROM Employee e
INNER JOIN Department d
ON e.Dept_ID = d.Dept_ID;

EXPLAIN
SELECT e.Emp_ID,
        e.Emp_Name,
        e.Salary
FROM Employee e
WHERE e.Salary > (
    SELECT AVG(e2.Salary)
    FROM Employee e2
    WHERE e2.Dept_ID = e.Dept_ID
);

EXPLAIN
SELECT d.Dept_Name
FROM Department d
WHERE EXISTS (
    SELECT 1
    FROM Employee e
    WHERE e.Dept_ID = d.Dept_ID
      AND e.Salary > 100000
);
