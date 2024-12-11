/*
Carson Gustafson Dylan Westigard Orlando Trujillo Ortiz
CS 325 Fall 2024
12/07/24
*/

drop table Department cascade constraints;

create table Department(
dept_id integer,
dept_name varchar2(18),
dept_total_inv integer,
primary key (dept_id)
);

drop table Appraiser cascade constraints;

create table Appraiser(
app_id integer,
primary key (app_id)
);

drop table Customer cascade constraints;

create table Customer(
cust_id integer PRIMARY KEY, 
cust_age integer);

drop table Receipt cascade constraints;

create table Receipt(
receipt_id integer,
receipt_date date,
receipt_total decimal(13,2),
cust_id integer,
primary key (receipt_id),
foreign key (cust_id) references Customer
);

drop table RewardsMember cascade constraints;

create table RewardsMember(
cust_id integer PRIMARY KEY, 
member_rank integer, 
member_date DATE, 
member_phone varchar2(11),
foreign key (cust_id) references Customer);

drop table Donator cascade constraints;

create table Donator(
donator_id integer,
primary key (donator_id)
);


drop table Employee cascade constraints;

create table Employee(
empl_id integer PRIMARY KEY, 
empl_start_date DATE, 
empl_salary integer);

drop table TimeSheet cascade constraints;

create table TimeSheet (
time_sheet_id integer,
empl_id integer,
clock_in DATE NOT NULL,
clock_out DATE DEFAULT NULL CHECK (clock_out is null OR clock_out > clock_in ),
primary key (time_sheet_id),
	foreign key (empl_id) references Employee(empl_id));

drop table Event cascade constraints;

create table Event(
event_id integer, 
event_date date,
primary key (event_id)
);


drop table EventOrganizer cascade constraints;

create table EventOrganizer (
empl_id integer,
event_id integer,
	foreign key (empl_id) references Employee(empl_id),
	foreign key (event_id) references Event(event_id));


drop table Attendee cascade constraints;

create table Attendee 
(cust_id integer, 
event_id integer,
primary key (cust_id, event_id),
foreign key (cust_id) references RewardsMember,
foreign key (event_id) references Event);

drop table Manager cascade constraints;

create table Manager
(mgr_id integer,
mgr_start_date date, 
mgr_salary integer,
primary key (mgr_id));

drop table ManagerManagesManagees cascade constraints;

create table ManagerManagesManagees(
empl_id integer,
mgr_id integer,
primary key (empl_id, mgr_id),
	foreign key (empl_id) references Employee,
	foreign key (mgr_id) references Manager);

drop table Item cascade constraints;

create table Item (
item_id integer,
item_desc varchar2(42),
item_price decimal (9,2),
item_color varchar2(12),
item_size varchar2(20),
item_restricted INTEGER NOT NULL CHECK (item_restricted IN (0, 1)),
on_receipt integer,
dept_id integer,
app_id integer,
cust_id integer,
donated_by integer,
primary key (item_id),
foreign key (on_receipt) references Receipt(receipt_id),
foreign key (donated_by) references Donator(donator_id),
foreign key (dept_id) references Department,
foreign key (app_id) references Appraiser,
foreign key (cust_id) references Customer
);



drop table EventItem cascade constraints;

create table EventItem (
event_id integer,
item_id integer,
	foreign key (event_id) references Event(event_id),
	foreign key (item_id) references Item(item_id));

drop table DonationDate cascade constraints;

create table DonationDate (
donator_id integer,
don_date date,
foreign key (donator_id) references Donator
);

