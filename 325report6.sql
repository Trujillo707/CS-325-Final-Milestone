-- Dylan Westigard Orland Trujillo Carson Gustafson
-- CS 325 - Fall 2024
-- 12/10/24

-- This is a report of the employee timesheet for a year

spool 325report6-results.txt


set linesize 100
set pagesize 30
ttitle "Consolidated Clock-in Chronicle"


col time_sheet_id heading 'Time Sheet ID' format 999
col empl_id heading 'Curator' format 999
col clock_in heading 'IN TIME' format a25
col clock_out heading 'OUT TIME' format a25

SELECT time_sheet_id, empl_id, to_char(clock_in, 'YYYY-MM-DD HH24:MI:SS') AS clock_in
        ,to_char(clock_out, 'YYYY-MM-DD HH24:MI:SS') AS clock_out
FROM TimeSheet
WHERE clock_in BETWEEN TO_DATE('2024-01-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS')
         AND TO_DATE('2024-12-31 23:59:59', 'YYYY-MM-DD HH24:MI:SS');

spool off

set pagesize 40
set linesize 80
ttitle off
clear columns
