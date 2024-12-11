prompt 19. Employees who have been hired for over 1 year and have salary under 50k

SELECT *
FROM Employee
WHERE empl_start_date > '2023-12-07' AND empl_salary < 50000;