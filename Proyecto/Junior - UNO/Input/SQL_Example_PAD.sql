-- Esta es un programa para crear una DB como ejemplo de PAD

-- Best Practices - use CAPS for better Readability

CREATE DATABASE dbExamplePAD;
GO

USE dbExamplePAD;
GO

CREATE TABLE tbPersonas
(
PersonaID INT IDENTITY(1,1) PRIMARY KEY, -- RECORDAR CÓMO COLOCAR AUTOINCREMENTAL
Nombre VARCHAR(30) not null,
Apellido VARCHAR(30) not null,
Edad INT,
FechaNacimiento DATE
);
GO

-- Vamos a empezar a utilizar el LMD
INSERT INTO tbPersonas (Nombre, Apellido, Edad, FechaNacimiento) 
VALUES
	('Ernesto', 'Ramirez', 25, '02-02-2025'),
	('Liliana', 'Sanchez', 10, '01-05-2024'),
	('Erik', 'Leon', 90, '01-02-1999'),
	('Ricardo', 'Montaner', 60, '12-25-2001'),
	('Piero', 'Barone', 29, '05-01-2025'),
	('Gianluca', 'Ginoble', 16, '01-30-2024');
GO

-- MES - DIA - AÑO


-- Start with the Transact SQL
select Nombre, Apellido, Edad, FechaNacimiento, DATEDIFF(DAY, FechaNacimiento, GETDATE()) AS Resultado from tbPersonas;
--WHERE VAT = 001;
go

