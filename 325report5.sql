-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

--
spool 325report5-results.txt

set pagesize 150

ttitle 'Crazy Collectors Total Transactions'


col cust_id heading 'Crazy Collectors' format 999
col total heading 'Receipt Total' format $99999.99

break on cust_id skip 1
compute avg min max of total on cust_id

SELECT c.cust_id, r.receipt_id, r.receipt_total AS total
FROM Customer c
JOIN Receipt r
ON c.cust_id = r.cust_id
ORDER BY c.cust_id;

spool off

set pagesize 40
ttitle off
clear columns
