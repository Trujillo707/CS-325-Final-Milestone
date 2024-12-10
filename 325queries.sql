--Dylan W, Carson G, and Orlando TO
--CS 325 - Fall 2024 
--2024-12-07

spool 325query-results.txt

prompt 1. List of all currently available items for sale
SELECT * 
FROM Item 
WHERE on_receipt = NULL;

prompt 2. Average price of all items ever sold

SELECT AVG(item_price)
FROM Item
WHERE on_receipt != NULL;

prompt 3. Highest receipt total in the last 6 months

SELECT MAX(receipt_total)
FROM Receipt
WHERE receipt_date > '2024-06-07';

prompt 4. Total value sum of all items sold

SELECT SUM(receipt_total)
FROM Receipt;

prompt 5. Average reciept total per customer

SELECT c.cust_id, AVG(r.receipt_total)
FROM Customer c
JOIN Receipt r
ON c.cust_id = r.cust_id;

prompt 6. Roster of all employees

SELECT *
FROM employees;

prompt 7. Employee IDs who have organized an Event in last 6 months 

SELECT e.empl_id
FROM Employee e
JOIN EventOrganizer o
ON e.empl_id = o.empl_id
JOIN Event ev
ON ev.event_id = o.event_id
WHERE ev.event_date > '2024-06-07';

prompt 8. All rewards members

SELECT *
FROM RewardsMember;

prompt 9. List of RewardsMembers who have attended an Event in the last 12 months



prompt 10. ID of each Manager for each Employee

SELECT 

prompt 11. Items that cost more than the average item price

prompt 12. Items that have been on shelves for over a year

prompt 13. Customers with total purchases greater than average

prompt 14. Receipts with totals greater than the average Receipt total

SELECT receipt_id
FROM receipt 
WHERE receipt_total > (SELECT receipt_total(AVG)
                       FROM receipt);

prompt 15. List of all Items grouped into Departments

prompt 16. Items donated grouped with their Donators

prompt 17. Items sold grouped by reciept

prompt 18. Reciepts where the total is over $200 and was before 1 month ago

prompt 19. Employees who have been hired for over 1 year and have salary under 50k

prompt 20. RewardsMember who are member_rank = 3 and have been signed up for 3 months

prompt 21. Appraised items grouped by their Appraiser

prompt 22. Employees who earn more than the average employee salary

prompt 23. Items that were donated within the last year

prompt 24. Groups of items that were in events