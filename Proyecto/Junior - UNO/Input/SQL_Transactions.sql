-- Best Practices - use CAPS for better Readability

CREATE DATABASE BlackList;
GO

USE BlackList;
GO

CREATE TABLE tblCOMPANIES
(
VAT int Primary Key,
CompanyName varchar(30) not null,
Reason varchar(20) not null
);
GO

-- Vamos a empezar a utilizar el LMD
INSERT INTO tblCOMPANIES (VAT, CompanyName, Reason) 
VALUES
	(001, 'Text One', 'Text One One'), 
	(002, 'Text Two', 'Text One Two'),
	(003, 'Text Three', 'Text One Three');
GO


-- Start with the Transact SQL
select * from tblCOMPANIES;
--WHERE VAT = 001;
go
