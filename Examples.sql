l--  Examples with solutions in SQL Easy to Hard
--  Examples are extracted from Leetcode.com



/* Question 1: 

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId is the primary key column for this table.


Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId is the primary key column for this table.


Write a SQL query for a report that provides the following information for
each person in the Person table, regardless if there is an address for each of those people:*/


SELECT FirstName, LastName, City, State FROM Person
LEFT JOIN Address on Person.PersonId = Address.PersonId;


/* Question 2: Level of Difficulty >> Intermediate

Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+

For example, given the above Employee table, 
the query should return 200 as the second highest salary.
If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

*/


SELECT MAX(salary) AS SecondHighestSalary FROM Employee
WHERE salary < (SELECT Max(Salary) FROM Employee);



 
/* Question 3: Level of Difficulty >>> Intermediate

Write a SQL query to get the nth highest salary from the Employee table.

For example, given the above Employee table, the nth highest salary where n = 2 is 200. If there is no nth highest salary, then the query should return null.

+------------------------+
| getNthHighestSalary(2) |
+------------------------+
| 200                    |
+------------------------+

*/

 


