We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table.
  Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as
  space-separated integers.

  where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary

Solution:

SELECT MAX(salary * months), COUNT(employee_id)
FROM employee
WHERE salary * months = (SELECT MAX(salary * months) FROM employee)
