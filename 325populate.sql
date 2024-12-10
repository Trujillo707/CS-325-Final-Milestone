-- 325populate.sql
-- Group Members: Carson Gustafson, Dylan Westigard, Orlando Trujillo Ortiz
-- CS 325 - Fall 2024
-- Last Modified: 2024-12-01


-- Delete statements (child tables first)
PROMPT Deleting data from Attendee
DELETE FROM Attendee;

PROMPT Deleting data from EventOrganizer
DELETE FROM EventOrganizer;

PROMPT Deleting data from EventItem
DELETE FROM EventItem;

PROMPT Deleting data from ManagerManagesManagees
DELETE FROM ManagerManagesManagees;

PROMPT Deleting data from Event
DELETE FROM Event;

PROMPT Deleting data from Item
DELETE FROM Item;

PROMPT Deleting data from DonationDate
DELETE FROM DonationDate;

PROMPT Deleting data from Donator
DELETE FROM Donator;

PROMPT Deleting data from RewardsMember
DELETE FROM RewardsMember;

PROMPT Deleting data from Receipt
DELETE FROM Receipt;

PROMPT Deleting data from Customer
DELETE FROM Customer;

PROMPT Deleting data from Manager
DELETE FROM Manager;

PROMPT Deleting data from Employee
DELETE FROM Employee;

PROMPT Deleting data from Appraiser
DELETE FROM Appraiser;

PROMPT Deleting data from Department
DELETE FROM Department;

-- Insert statements

-- Inserting into Department
PROMPT Inserting data into Department
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (1, 'Electronics', 500000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (2, 'Apparel', 300000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (3, 'Home Goods', 200000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (4, 'Books', 150000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (5, 'Sports', 250000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (6, 'Toys', 180000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (7, 'Beauty', 220000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (8, 'Automotive', 275000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (9, 'Garden', 160000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (10, 'Music', 140000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (11, 'Health', 190000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (12, 'Office Supplies', 130000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (13, 'Pet Supplies', 210000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (14, 'Jewelry', 175000);
INSERT INTO Department (dept_id, dept_name, dept_total_inv) VALUES (15, 'Footwear', 240000);

-- Inserting into Appraiser
PROMPT Inserting data into Appraiser
INSERT INTO Appraiser (app_id) VALUES (1);
INSERT INTO Appraiser (app_id) VALUES (2);
INSERT INTO Appraiser (app_id) VALUES (3);
INSERT INTO Appraiser (app_id) VALUES (4);
INSERT INTO Appraiser (app_id) VALUES (5);
INSERT INTO Appraiser (app_id) VALUES (6);
INSERT INTO Appraiser (app_id) VALUES (7);
INSERT INTO Appraiser (app_id) VALUES (8);
INSERT INTO Appraiser (app_id) VALUES (9);
INSERT INTO Appraiser (app_id) VALUES (10);
INSERT INTO Appraiser (app_id) VALUES (11);
INSERT INTO Appraiser (app_id) VALUES (12);
INSERT INTO Appraiser (app_id) VALUES (13);
INSERT INTO Appraiser (app_id) VALUES (14);
INSERT INTO Appraiser (app_id) VALUES (15);

-- Inserting into Customer
PROMPT Inserting data into Customer
INSERT INTO Customer (cust_id, cust_age) VALUES (1, 25);
INSERT INTO Customer (cust_id, cust_age) VALUES (2, 34);
INSERT INTO Customer (cust_id, cust_age) VALUES (3, 45);
INSERT INTO Customer (cust_id, cust_age) VALUES (4, 29);
INSERT INTO Customer (cust_id, cust_age) VALUES (5, 52);
INSERT INTO Customer (cust_id, cust_age) VALUES (6, 31);
INSERT INTO Customer (cust_id, cust_age) VALUES (7, 40);
INSERT INTO Customer (cust_id, cust_age) VALUES (8, 22);
INSERT INTO Customer (cust_id, cust_age) VALUES (9, 37);
INSERT INTO Customer (cust_id, cust_age) VALUES (10, 28);
INSERT INTO Customer (cust_id, cust_age) VALUES (11, 33);
INSERT INTO Customer (cust_id, cust_age) VALUES (12, 47);
INSERT INTO Customer (cust_id, cust_age) VALUES (13, 26);
INSERT INTO Customer (cust_id, cust_age) VALUES (14, 39);
INSERT INTO Customer (cust_id, cust_age) VALUES (15, 55);

-- Inserting into Receipt
PROMPT Inserting data into Receipt
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (1, DATE '2024-11-01', 150.75, 1);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (2, DATE '2024-11-05', 89.50, 2);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (3, DATE '2024-11-10', 230.00, 3);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (4, DATE '2024-11-12', 120.00, 4);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (5, DATE '2024-11-15', 75.25, 5);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (6, DATE '2024-11-18', 310.40, 6);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (7, DATE '2024-11-20', 45.60, 7);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (8, DATE '2024-11-22', 200.00, 8);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (9, DATE '2024-11-25', 160.80, 9);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (10, DATE '2024-11-28', 99.99, 10);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (11, DATE '2024-11-30', 180.50, 11);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (12, DATE '2024-12-02', 220.00, 12);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (13, DATE '2024-12-05', 130.75, 13);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (14, DATE '2024-12-08', 95.20, 14);
INSERT INTO Receipt (receipt_id, receipt_date, receipt_total, cust_id) VALUES (15, DATE '2024-12-10', 250.00, 15);

-- Inserting into RewardsMember
PROMPT Inserting data into RewardsMember
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (1, 1, DATE '2024-01-15', '1234567890');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (2, 2, DATE '2024-02-20', '0987654321');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (3, 1, DATE '2024-03-10', '5551234567');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (4, 3, DATE '2024-04-05', '4445556666');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (5, 2, DATE '2024-05-12', '3332221111');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (6, 1, DATE '2024-06-18', '7778889999');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (7, 3, DATE '2024-07-25', '6665554444');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (8, 2, DATE '2024-08-30', '8889990000');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (9, 1, DATE '2024-09-14', '1112223333');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (10, 3, DATE '2024-10-20', '2223334444');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (11, 2, DATE '2024-11-05', '3334445555');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (12, 1, DATE '2024-11-25', '4445556666');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (13, 3, DATE '2024-12-01', '5556667777');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (14, 2, DATE '2024-12-10', '6667778888');
INSERT INTO RewardsMember (cust_id, member_rank, member_date, member_phone) VALUES (15, 1, DATE '2024-12-15', '7778889999');

-- Inserting into Donator
PROMPT Inserting data into Donator
INSERT INTO Donator (donator_id) VALUES (1);
INSERT INTO Donator (donator_id) VALUES (2);
INSERT INTO Donator (donator_id) VALUES (3);
INSERT INTO Donator (donator_id) VALUES (4);
INSERT INTO Donator (donator_id) VALUES (5);
INSERT INTO Donator (donator_id) VALUES (6);
INSERT INTO Donator (donator_id) VALUES (7);
INSERT INTO Donator (donator_id) VALUES (8);
INSERT INTO Donator (donator_id) VALUES (9);
INSERT INTO Donator (donator_id) VALUES (10);
INSERT INTO Donator (donator_id) VALUES (11);
INSERT INTO Donator (donator_id) VALUES (12);
INSERT INTO Donator (donator_id) VALUES (13);
INSERT INTO Donator (donator_id) VALUES (14);
INSERT INTO Donator (donator_id) VALUES (15);

-- Inserting into Employee
PROMPT Inserting data into Employee
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (1, DATE '2023-06-01', 60000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (2, DATE '2022-09-15', 55000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (3, DATE '2024-01-20', 58000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (4, DATE '2021-03-10', 62000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (5, DATE '2023-07-22', 59000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (6, DATE '2022-11-05', 61000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (7, DATE '2024-02-14', 57000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (8, DATE '2023-04-18', 63000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (9, DATE '2021-12-01', 60500);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (10, DATE '2022-05-30', 59500);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (11, DATE '2023-08-25', 61500);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (12, DATE '2024-03-03', 62500);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (13, DATE '2021-10-20', 58000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (14, DATE '2022-07-07', 60000);
INSERT INTO Employee (empl_id, empl_start_date, empl_salary) VALUES (15, DATE '2023-09-15', 59000);

-- Inserting into Manager
PROMPT Inserting data into Manager
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (1, DATE '2021-05-01', 80000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (2, DATE '2022-07-15', 82000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (3, DATE '2023-03-10', 79000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (4, DATE '2024-04-20', 81000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (5, DATE '2021-09-25', 83000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (6, DATE '2022-11-30', 84000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (7, DATE '2023-02-14', 76000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (8, DATE '2024-03-18', 85000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (9, DATE '2021-12-01', 78000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (10, DATE '2022-05-30', 80000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (11, DATE '2023-08-25', 82000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (12, DATE '2024-03-03', 83000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (13, DATE '2021-10-20', 77000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (14, DATE '2022-07-07', 81000);
INSERT INTO Manager (mgr_id, mgr_start_date, mgr_salary) VALUES (15, DATE '2023-09-15', 80000);

-- Inserting into ManagerManagesManagees
PROMPT Inserting data into ManagerManagesManagees
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (1, 1);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (2, 2);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (3, 3);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (4, 4);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (5, 5);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (6, 6);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (7, 7);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (8, 8);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (9, 9);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (10, 10);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (11, 11);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (12, 12);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (13, 13);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (14, 14);
INSERT INTO ManagerManagesManagees (empl_id, mgr_id) VALUES (15, 15);

-- Inserting into Event
PROMPT Inserting data into Event
INSERT INTO Event (event_id, event_date) VALUES (1, DATE '2024-12-15');
INSERT INTO Event (event_id, event_date) VALUES (2, DATE '2024-12-20');
INSERT INTO Event (event_id, event_date) VALUES (3, DATE '2024-12-25');
INSERT INTO Event (event_id, event_date) VALUES (4, DATE '2025-01-05');
INSERT INTO Event (event_id, event_date) VALUES (5, DATE '2025-01-10');
INSERT INTO Event (event_id, event_date) VALUES (6, DATE '2025-01-15');
INSERT INTO Event (event_id, event_date) VALUES (7, DATE '2025-01-20');
INSERT INTO Event (event_id, event_date) VALUES (8, DATE '2025-01-25');
INSERT INTO Event (event_id, event_date) VALUES (9, DATE '2025-02-01');
INSERT INTO Event (event_id, event_date) VALUES (10, DATE '2025-02-05');
INSERT INTO Event (event_id, event_date) VALUES (11, DATE '2025-02-10');
INSERT INTO Event (event_id, event_date) VALUES (12, DATE '2025-02-15');
INSERT INTO Event (event_id, event_date) VALUES (13, DATE '2025-02-20');
INSERT INTO Event (event_id, event_date) VALUES (14, DATE '2025-02-25');
INSERT INTO Event (event_id, event_date) VALUES (15, DATE '2025-03-01');

-- Inserting into EventOrganizer
PROMPT Inserting data into EventOrganizer
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (1, 1);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (2, 2);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (3, 3);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (4, 4);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (5, 5);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (6, 6);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (7, 7);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (8, 8);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (9, 9);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (10, 10);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (11, 11);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (12, 12);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (13, 13);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (14, 14);
INSERT INTO EventOrganizer (empl_id, event_id) VALUES (15, 15);

-- Inserting into Attendee
PROMPT Inserting data into Attendee
INSERT INTO Attendee (cust_id, event_id) VALUES (1, 1);
INSERT INTO Attendee (cust_id, event_id) VALUES (2, 2);
INSERT INTO Attendee (cust_id, event_id) VALUES (3, 3);
INSERT INTO Attendee (cust_id, event_id) VALUES (4, 4);
INSERT INTO Attendee (cust_id, event_id) VALUES (5, 5);
INSERT INTO Attendee (cust_id, event_id) VALUES (6, 6);
INSERT INTO Attendee (cust_id, event_id) VALUES (7, 7);
INSERT INTO Attendee (cust_id, event_id) VALUES (8, 8);
INSERT INTO Attendee (cust_id, event_id) VALUES (9, 9);
INSERT INTO Attendee (cust_id, event_id) VALUES (10, 10);
INSERT INTO Attendee (cust_id, event_id) VALUES (11, 11);
INSERT INTO Attendee (cust_id, event_id) VALUES (12, 12);
INSERT INTO Attendee (cust_id, event_id) VALUES (13, 13);
INSERT INTO Attendee (cust_id, event_id) VALUES (14, 14);
INSERT INTO Attendee (cust_id, event_id) VALUES (15, 15);

-- Inserting into Item
PROMPT Inserting data into Item
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (1, 'Smartphone Model X', 999.99, 'Black', 'Medium', 0, 1, 1, 1, 1, 1);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (2, 'Leather Jacket', 199.99, 'Brown', 'Large', 0, 2, 2, 2, 2, 2);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (3, 'Blender 3000', 89.99, 'Red', 'N/A', 0, 3, 3, 3, 3, 3);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (4, 'Gaming Laptop Pro', 1499.99, 'Silver', '15-inch', 0, 4, 1, 4, 4, 4);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (5, 'Running Shoes', 120.00, 'Blue', '10', 0, 5, 15, 5, 5, 5);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (6, 'Electric Guitar', 350.00, 'Sunburst', 'Standard', 0, 6, 10, 6, 6, 6);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (7, '4K LED TV', 799.99, 'Black', '55-inch', 0, 7, 1, 7, 7, 7);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (8, 'Office Chair Deluxe', 150.00, 'Gray', 'Adjustable', 0, 8, 12, 8, 8, 8);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (9, 'Digital Camera X100', 450.50, 'Black', 'Compact', 0, 9, 1, 9, 9, 9);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (10, 'Winter Coat', 180.00, 'Navy Blue', 'XL', 0, 10, 2, 10, 10, 10);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (11, 'Smartwatch Series 5', 250.00, 'Black', 'One Size', 0, 11, 1, 11, 11, 11);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (12, 'Espresso Machine', 300.00, 'Silver', 'N/A', 0, 12, 3, 12, 12, 12);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (13, 'Yoga Mat Pro', 35.00, 'Purple', 'Standard', 0, 13, 5, 13, 13, 13);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (14, 'Children''s Bicycle', 120.00, 'Red', 'Small', 0, 14, 6, 14, 14, 14);
INSERT INTO Item (item_id, item_desc, item_price, item_color, item_size, item_restricted, on_receipt, dept_id, app_id, cust_id, donated_by) 
VALUES (15, 'Diamond Necklace', 1500.00, 'White', 'N/A', 1, 15, 14, 15, 15, 15);

-- Inserting into EventItem
PROMPT Inserting data into EventItem
INSERT INTO EventItem (event_id, item_id) VALUES (1, 1);
INSERT INTO EventItem (event_id, item_id) VALUES (2, 2);
INSERT INTO EventItem (event_id, item_id) VALUES (3, 3);
INSERT INTO EventItem (event_id, item_id) VALUES (4, 4);
INSERT INTO EventItem (event_id, item_id) VALUES (5, 5);
INSERT INTO EventItem (event_id, item_id) VALUES (6, 6);
INSERT INTO EventItem (event_id, item_id) VALUES (7, 7);
INSERT INTO EventItem (event_id, item_id) VALUES (8, 8);
INSERT INTO EventItem (event_id, item_id) VALUES (9, 9);
INSERT INTO EventItem (event_id, item_id) VALUES (10, 10);
INSERT INTO EventItem (event_id, item_id) VALUES (11, 11);
INSERT INTO EventItem (event_id, item_id) VALUES (12, 12);
INSERT INTO EventItem (event_id, item_id) VALUES (13, 13);
INSERT INTO EventItem (event_id, item_id) VALUES (14, 14);
INSERT INTO EventItem (event_id, item_id) VALUES (15, 15);

-- Inserting into DonationDate
PROMPT Inserting data into DonationDate
INSERT INTO DonationDate (donator_id, don_date) VALUES (1, DATE '2024-10-01');
INSERT INTO DonationDate (donator_id, don_date) VALUES (2, DATE '2024-10-15');
INSERT INTO DonationDate (donator_id, don_date) VALUES (3, DATE '2024-11-05');
INSERT INTO DonationDate (donator_id, don_date) VALUES (4, DATE '2024-11-10');
INSERT INTO DonationDate (donator_id, don_date) VALUES (5, DATE '2024-11-20');
INSERT INTO DonationDate (donator_id, don_date) VALUES (6, DATE '2024-11-25');
INSERT INTO DonationDate (donator_id, don_date) VALUES (7, DATE '2024-12-01');
INSERT INTO DonationDate (donator_id, don_date) VALUES (8, DATE '2024-12-05');
INSERT INTO DonationDate (donator_id, don_date) VALUES (9, DATE '2024-12-10');
INSERT INTO DonationDate (donator_id, don_date) VALUES (10, DATE '2024-12-15');
INSERT INTO DonationDate (donator_id, don_date) VALUES (11, DATE '2024-12-20');
INSERT INTO DonationDate (donator_id, don_date) VALUES (12, DATE '2024-12-25');
INSERT INTO DonationDate (donator_id, don_date) VALUES (13, DATE '2025-01-01');
INSERT INTO DonationDate (donator_id, don_date) VALUES (14, DATE '2025-01-05');
INSERT INTO DonationDate (donator_id, don_date) VALUES (15, DATE '2025-01-10');

-- Commit all changes
COMMIT;
