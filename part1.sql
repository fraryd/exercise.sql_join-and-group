SELECT customers.customerName AS "Customer Name", CONCAT(employees.lastName,", ", employees.firstName) AS "Sales Rep"
FROM CUSTOMERS 
LEFT JOIN EMPLOYEES ON CUSTOMERS.salesRepEmployeeNumber=employees.employeeNumber 
ORDER BY customers.customerName ASC;