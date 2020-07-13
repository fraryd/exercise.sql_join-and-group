SELECT CONCAT(employees.lastName,", ", employees.firstName) AS "Sales Rep", IFNULL(orderdetails.quantityOrdered, 0) AS "# Orders", 
IFNULL(orderdetails.priceEach * orderdetails.quantityOrdered, 0) AS "Total Sale"
FROM employees
LEFT JOIN customers
ON employees.employeeNumber=customers.salesRepEmployeeNumber

LEFT JOIN orders 
ON orders.customerNumber=customers.customerNumber

LEFT JOIN orderdetails
ON customers.salesRepEmployeeNumber=orderdetails.quantityOrdered

GROUP BY employees.employeeNumber
ORDER BY (orderdetails.priceEach * orderdetails.quantityOrdered) DESC;