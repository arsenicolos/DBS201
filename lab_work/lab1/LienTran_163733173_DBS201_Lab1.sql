--
-- Name: Lien Tran
-- ID#: 163733173 
-- Date: Sept 9, 2019
-- Purpose: DBS201 Lab1
--
/* a)	How many tables have been created? List the name of created tables.
 
 answer: There are 8 tables have been created
--customers, employees, officies, orderdetails, orders, payments, productlines, products.

 b)	Right click on table customers. Select the first option Select Rows – Limit 1000. 
How many rows are selected from table customers?

 answer: There are 122 rows return

c)	What SQL statement is executed in the SQL tab after selecting Select Rows – Limit 1000. Write the statement in the space provided below.

 answer: SELECT * FROM db_nltran1.customers;

d)	How many columns does the customers table have? List the column names.

 answer:  there are 13 column in the customers table
--customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, addressLine2, city, state, postalCode, country, salesRepEmployeeNumber, creditLimit


e)	What is the value of each column in the first row in table customers? Write the column name and the column value.
 
 answer: 
customerNumber: 103
customerName: Atelier graphique
contactLastName: Schmitt
contactFirstName: Carine
phone: 40.32.2555
addressLine1: 54, rue Royale
addressLine2: NULL
city: Nantes
state: NULL
postalCode: 44000
country: France
salesRepEmployeeNumber: 1370
creditLimit: 21000.00


f)	Write the number of rows and columns for the rest of the tables in your schema.

 answer:
Table Name		  Rows			Columns
_customers______	_122____	_13_____
_employees______	_23___		_8______
_offices________	_7____		_9______
_orderdetails___	_2996____	_5______
_orders_________	_326____	_7______
_payments_______	_273____	_4______
_productlines___	_7____		_4______
_products_______	_110___		_9______

g)	Right click on table employees. Select Alter Table. In the column subtab, you can see the list of columns and edit them. 
Do not modify any column. List the column names and types for table employees.

 answer:
Column Name		  				Column Type		
_employeeNumber______		_INT(11)__________			
_lastName_______		 	_VARCHAR(50)_________			
_firstName_________			_VARCHAR(50)________			
_extension_________		 	_VARCHAR(10)__________			
_email_________		 		_VARCHAR(100)__________
_officeCode_________		_VARCHAR(10)__________
_reportsTo_________			_INT(11)__________
_jobTitle_________		 	_VARCHAR(50)__________

h)	Open a new SQL tab.Write the following SQL statement in the new tab.desc offices;You can also write,describe offices;
Select the run button to execute the statement. See the next image for the execution button. What is the result of the statement execution?

 answer:
22:41:35	desc offices	9 row(s) returned	0.000 sec / 0.000 sec

*/
