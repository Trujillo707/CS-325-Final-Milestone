-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

-- This a report of all the customer's that have receipt totals more than the average receipt

spool 325report1-results.txt


set linesize 100

ttitle "CATALOG OF FERVOROUS CRAZY COLLECTERS"

col cust_id heading 'Crazy Collectors' format 999
col SUM(receipt_total) heading 'Comprehensive Currency Compilation' format $9999.99

SELECT c.cust_id, SUM(receipt_total)
FROM Customer c
JOIN Receipt r ON c.cust_id = r.cust_id
GROUP BY c.cust_id
HAVING SUM(receipt_total) > (SELECT AVG(receipt_total)
                             FROM Receipt)
ORDER BY SUM(receipt_total) desc;

clear columns 
ttitle off

spool off