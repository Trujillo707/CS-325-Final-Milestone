
-- Dylan Westigard Orland Trujillo Carson Gustafson 
-- CS 325 - Fall 2024
-- 12/10/24

spool 325report1-results.txt



prompt 13. Customers with total purchases greater than average

SELECT cust_id, SUM(receipt_total)
FROM Customer c
JOIN Receipt r ON c.cust_id = r.cust_id
GROUP BY cust_id
HAVING SUM(receipt_total) > (SELECT AVG(receipt_total)
                             FROM Receipt)
ORDER BY SUM(receipt_total) desc;