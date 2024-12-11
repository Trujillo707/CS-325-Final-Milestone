-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

-- This report contains Employees that were hired over 1 year ago with a salary under $50,000 

spool 325report2-results.txt

TTITLE "Employees hired over 1 year ago with a salary under $50,000"

COL empl_id HEADING "Curator ID" FORMAT 9999
COL empl_start_date HEADING "Hire Date" FORMAT A10
COL empl_salary HEADING "Salary" FORMAT $99999.99

SELECT empl_id, empl_start_date, empl_salary
FROM Employee
WHERE empl_start_date < TO_DATE('2023-12-07', 'YYYY-MM-DD') AND empl_salary < 50000;

spool off

set linesize 80
ttitle off
clear columns


