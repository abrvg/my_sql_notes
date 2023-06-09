/*
TABLE Employee

+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| salary      | int  |
+-------------+------+
id is the primary key column for this table.
Each row of this table contains information about the salary of an employee.

PROBLEM STATEMENT:
Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

*/

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
