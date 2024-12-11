prompt 5. Average reciept total per customer

SELECT c.cust_id, AVG(r.receipt_total)
FROM Customer c
JOIN Receipt r
ON c.cust_id = r.cust_id;
