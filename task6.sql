
CREATE TABLE CUSTOMERS(
 CUSTOMERID INT PRIMARY KEY,
 NAME TEXT,
 CITY TEXT
 );
create table ORDERS(
ORDERID INT primary key,
CUSTOMERID INT,
ORDERDATE DATE,
AMOUNT real,
foreign key (CUSTOMERID)references CUSTOMERS(CUSTOMERID));
insert into CUSTOMERS VALUES(1,'Alice', 'Delhi');
insert into customers VALUES(2, 'Bob', 'Mumbai');
insert into customers VALUES(3, 'Charlie', 'Kochi');
insert into customers VALUES(4, 'David', 'Chennai');
insert into customers VALUES(5, 'Dan', 'goa');
insert into customers VALUES(6, 'Sam', 'Kolkata');
INSERT INTO Orders VALUES (101, 1, '2024-06-01', 250.50);
INSERT INTO Orders VALUES (102, 2, '2024-06-02', 300.00);
INSERT INTO Orders VALUES (103, 1, '2024-06-05', 150.75);
INSERT INTO Orders VALUES (104, 3, '2024-06-05', 350.75);
INSERT INTO Orders VALUES (105, 4, '2024-06-06', 280.75);
INSERT INTO Orders VALUES (106,null,'2024-06-07',290);
select * from CUSTOMERS;
select C.NAME,O.ORDERID,O.AMOUNT from CUSTOMERS C inner join ORDERS O ON C.CUSTOMERID=O.CUSTOMERID order by O.ORDERID;
SELECT c.name, o.orderid, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customerid = o.customerid order by o.orderid;
SELECT c.name, o.orderid, o.amount
FROM Customers c
right JOIN Orders o ON c.customerid = o.customerid order by o.orderid;
-- Simulate FULL OUTER JOIN
SELECT c.name, o.orderid, o.amount
FROM Customers c
LEFT JOIN Orders o ON c.customerid = o.customerid

UNION

SELECT c.name, o.orderid, o.amount
FROM Customers c
RIGHT JOIN Orders o ON c.customerid = o.customerid;






