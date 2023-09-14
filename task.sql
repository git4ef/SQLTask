use task;

/* task1 */
SELECT FirstName,LastName,City,State FROM Person 
LEFT JOIN Address 
ON Person.PersonID = Address.PersonID;

/* task2 */
SELECT Salary FROM employee 
ORDER BY Salary 
DESC LIMIT 1,1;

/* task3 */
SELECT worker.name
FROM employee AS worker, employee AS manager
WHERE worker.managerid=manager.id
AND worker.Salary>manager.Salary;

/* task4 */
SELECT Email FROM person 
GROUP BY Email 
HAVING COUNT(*)>1;

/* task5 */
SELECT Name FROM customers 
WHERE id NOT IN (SELECT CustomerID FROM orders);

/* task6 */
SELECT class FROM courses 
GROUP BY class 
HAVING COUNT(Class)>=5;