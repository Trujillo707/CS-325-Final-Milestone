-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

-- This report contains a table of all items currently available for sale

spool 325report3-results.txt

TTITLE "All items currently available for sale"
COL item_id HEADING "Item ID" FORMAT 9999
COL item_desc HEADING "Description" FORMAT A20
COL item_price HEADING "Price" FORMAT $9999999.99
COL item_size HEADING "Size" FORMAT A7
COL item_restricted HEADING "Restricted" FORMAT 9

SET PAGESIZE 50
SET LINESIZE 150

SELECT item_id, item_desc, item_size, item_restricted, dept_id, item_price
FROM Item
WHERE on_receipt IS NULL;

spool off

set linesize 80
ttitle off
clear columns
