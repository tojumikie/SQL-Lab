select * from employee;

select * from employee where lastname = 'King';

select * from employee where firstname = 'Andrew'
	and reportsto is null;
	
select * from album order by title desc;

select firstname from Customer order by city asc;

insert into genre (genreid, "name") values
	(26, 'House'),
	(27, 'Folk');
	
INSERT INTO Employee (EmployeeId, LastName, FirstName, Title, ReportsTo, BirthDate, HireDate, Address, City, State, Country, PostalCode, Phone, Fax, Email) VALUES 
(9, N'Toju', N'Mikie', N'IT Staff', 6, '1995/03/25', '2016/07/08', N'12708 Bruce B Downs Blvd', N'Tampa', N'FL', N'USA', N'33612', N'+1 (850) 289-3997', N'', N'tojumikie@live.com'),
(10, N'David', N'Smith', N'IT Staff', 6, '1990/01/06', '2018/08/02', N'12708 Bruce B Downs Blvd', N'Tampa', N'FL', N'USA', N'33612', N'+1 (833) 384-4012', N'', N'davidsmith@gmail.com');

INSERT INTO Customer (CustomerId, FirstName, LastName, Company, Address, City, State, Country, PostalCode, Phone, Fax, Email, SupportRepId) VALUES 
(60, N'Colangelo', N'Henrick', N'', N'529 East Pin Oak Ave.', N'Elmhurst', N'NY', N'USA', N'11373', N'+1 (483) 418-7877', N'', N'colangelohenrick@gmail.com', 3),
(61, N'Falynn', N'Ruthlia', N'', N'9575 Lafayette Road', N'Henrico', N'VA', N'USA', N'23228', N'+1 (945) 551-6851', N'', N'falynnruthlia@gmail.com', 5);

update customer set firstname = 'Robert', lastname = 'Walter' where customerid = 32;

update artist set "name" = 'CCR' where artistid = 76;

select * from invoice where billingaddress like 'T%';

select * from invoice where total between 15 and 50;

select * from employee where hiredate between '2003-06-01' and '2004-03-01';

--2.7
--select * from customer;
--select * from invoice;
--delete from invoice where customerid = 32;
--delete from customer where customerid = 32;


--3.1.1
select CURTIME();

--3.1.2
--select * from mediatype;
select length(mediatype."name") as MediatypeLength from mediatype;

--3.2.1
select avg(total) from invoice;
--3.2.2
select max(unitprice) from track;
--3.3
select avg(unitprice) from invoiceline;

--3.4
select * from employee where birthdate >= '1968-01-01';

--4.1
create procedure firstlastname
as
select firstname, lastname from employee;
go;

exec firstlastname;

--4.2.2
create procedure managers
as
select * from employee where
	title = 'General Manager' or
	title = 'Sales Manager' or
	title = 'IT Manager'
go;

exec managers;

--4.3
--select * from customer;
create procedure testing 
as
select concat(firstname, ' ', lastname) as name, company from customer
go;

exec testing;

--5.0

--6.0

--7.1
--select * from customer;
--select * from invoice;
--select * from invoiceline;
--select concat(firstname, ' ', lastname) as name from customer
--inner join invoice 
--on customer.name =  invoice.invoiceid;

select customer.lastname from customer
inner join orders on 

--7.2

--7.3


--7.4
--select * from album
--select * from artist

select * from album 
cross join artist 
order by artist."name";

--7.5
--select * from employee
