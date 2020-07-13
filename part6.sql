SELECT MONTH(payments.paymentDate) AS "Month", YEAR(payments.paymentDate) AS "Year", 
payments.amount AS "Payments Received"

FROM payments

ORDER BY payments.paymentDate ASC;