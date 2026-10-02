/*
Creates a new database named 'DataWarehouse' after checking if it already exists. 
If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
within the database. Namely, 'bronze', 'silver', and 'gold'. If you run this script, it will destroy
the old database.

*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
  
CREATE DATABASE DataWarehouse;
GO 
  
USE DataWarehouse;
GO 

CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
