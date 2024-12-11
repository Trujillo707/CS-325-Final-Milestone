prompt 7. Employee IDs who have organized an Event in last 6 months 

SELECT e.empl_id
FROM Employee e
JOIN EventOrganizer o
ON e.empl_id = o.empl_id
JOIN Event ev
ON ev.event_id = o.event_id
WHERE ev.event_date > '2024-06-07';