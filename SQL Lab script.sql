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

