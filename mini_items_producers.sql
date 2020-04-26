USE master;
IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'mini_items_producers')
BEGIN
	ALTER DATABASE [mini_items_producers] SET OFFLINE WITH ROLLBACK IMMEDIATE;
	ALTER DATABASE [mini_items_producers] SET ONLINE;
	DROP DATABASE [mini_items_producers];
END

GO
CREATE DATABASE mini_items_producers;
GO
USE mini_items_producers;
CREATE TABLE Items (Name varchar(50), ProducerName varchar(50));
CREATE TABLE Producers (ProducerName varchar(50), City varchar(50));
INSERT INTO Items VALUES ('Apple', 'Eshel');
INSERT INTO Items VALUES ('Bamba', 'Osem');
INSERT INTO Items VALUES ('Banana', 'Eshel');
INSERT INTO Items VALUES ('Banana', 'Ben');
INSERT INTO Producers VALUES ('Osem', 'Hadera');
INSERT INTO Producers VALUES ('Eshel', 'Hod sharon');
INSERT INTO Producers VALUES ('Telma', 'Hadera');

