SELECT CONCAT(employees.lastName,", ", employees.firstName) AS "Sales Rep", IFNULL(orderdetails.quantityOrdered, 0) AS "# Orders", 
IFNULL(orderdetails.priceEach * orderdetails.quantityOrdered, 0) AS "Total Sale"
FROM employees
LEFT JOIN customers
ON employees.employeeNumber=customers.salesRepEmployeeNumber

LEFT JOIN orders 
ON customers.customerNumber=orders.customerNumber

LEFT JOIN orderdetails
ON orders.orderNumber=orderdetails.orderNumber

GROUP BY employees.employeeNumber
ORDER BY (orderdetails.priceEach * orderdetails.quantityOrdered) DESC;