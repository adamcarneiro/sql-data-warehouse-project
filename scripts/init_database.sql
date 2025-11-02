/*
=====================================================================
CREATE DATABASE AND SCHEMAS
=====================================================================

SCRIPT PURPOSE:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and rcreated. Additionally, the scripts sets up three schemas
	within the database 'bronze','silver',and 'gold'. 

	WARNING:
	Running this script will drop the entire 'DataWarehouse' database if ti exists.
	All data in the database will be permanently deleted, Proceed with caution
	and ensure you have proper backuos before runnig this script.
*/


Use master;

GO

--Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

--CREATE THE 'DataWarehouse' DATABASE
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

--CREATE SCHEMAS
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
