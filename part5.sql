SELECT CONCAT(employees.lastName,", ", employees.firstName) AS "Sales Rep", orderdetails.quantityOrdered AS "# Orders", 
CONCAT (orderdetails.quantityOrdered * orderdetails.priceEach) AS "Total Sale"
FROM employees

LEFT JOIN customers
ON employees.employeeNumber=customers.customerNumber

LEFT JOIN orderdetails
ON customers.customerNumber=orderdetails.quantityOrdered

GROUP BY employees.employeeNumber
ORDER BY (orderdetails.quantityOrdered * orderdetails.priceEach) DESC;