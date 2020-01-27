/*
Name: Clint MacDonald
ID#: 900######
Date: Sept 10, 2019
Purpose: DBS201 Lab 1 - SOLUTIONS
*/

-- Qa
/* 
8 Tables have been created
customers, employees, offices, orderdetails, orders, payments, productlines, products
*/

-- Qb
/* 
122 rows are returned
*/

-- Qc
/*
SELECT * FROM <schemaname>.customers;
*/

-- Qd
/*
13 columns
	customerNumber
	customerName	
	contactLastName	
	contactFirstName
	phone
	addressLine1		
	addressLine2	
	city		
	state
	postalCode
	country	
	salesRepEmployeeNumber
	creditLimit	
*/

-- Qe
/*
	103	Atelier graphique	Schmitt	Carine 	40.32.2555	54, rue Royale		Nantes		44000	France	1370	21000.00
*/

-- Qf 
/*
TABLE NAME		ROWS		COLUMNS
-------------	-----		-------
customers		122			13
employees		23			8
offices			7			9
orderdetails	2996		5
orders			326			7
payments		273			4
productlines	7			4
products		110			9
*/

-- Qg
/*
	Field	Type	
	employeeNumber	int(11)	
	lastName		varchar(50)		
	firstName		varchar(50)		
	extension		varchar(10)		
	email			varchar(100)	
	officeCode		varchar(10)	
	reportsTo		int(11)	
	jobTitle		varchar(50)		
*/

-- Qh
/*
	Field	Type	Null	Key	Default	Extra
	employeeNumber	int(11)	NO	PRI		
	lastName	varchar(50)	NO			
	firstName	varchar(50)	NO			
	extension	varchar(10)	NO			
	email	varchar(100)	NO			
	officeCode	varchar(10)	NO	MUL		
	reportsTo	int(11)	YES	MUL		
	jobTitle	varchar(50)	NO		

The result is the output of the physical structure of the database	
*/
