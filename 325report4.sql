-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

-- This report contains employee IDs who have organized an event in the last 6 months

spool 325report4-results.txt

TTITLE "Employees/Curators who have organized an event in the last 6 months"
COL empl_id HEADING "Curator ID" FORMAT 999
COL event_date HEADING "EVENT DATE" FORMAT A10

SET PAGESIZE 50

BREAK on empl_id
SELECT e.empl_id, ev.event_date
FROM Employee e
JOIN EventOrganizer o
ON e.empl_id = o.empl_id
JOIN Event ev
ON ev.event_id = o.event_id
WHERE ev.event_date > TO_DATE('2024-06-07', 'YYYY-MM-DD');

spool off

set linesize 80
ttitle off
clear columns
