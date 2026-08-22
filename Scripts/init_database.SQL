##Creating the Data Warehouse Database and Schemas
##Why do we do this?

Before building our data warehouse, we need a database to store all the data and objects used in the project.

We first use the master database because it is the system database from which we can create a new database.

USE master;
GO

CREATE DATABASE Datawarehouse;
GO


Once the database has been created, we switch to it:

USE Datawarehouse;
GO


We then create three schemas to organise the data warehouse into different layers:

bronze – stores raw data loaded from the source systems with minimal transformation.
silver – stores cleaned, standardised, and transformed data.
gold – stores business-ready data used for reporting and analytics.
Complete SQL Script
USE master;
GO

CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

##Why do we use GO?

GO separates SQL statements into different batches.

CREATE SCHEMA must be the first statement in its batch. Therefore, we use GO between the schema creation statements.

For example:

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO


Without GO, SQL Server may return:

'CREATE SCHEMA' must be the first statement in a query batch.

##How to check that the schemas were created

After running the script in SQL Server Management Studio (SSMS):

In Object Explorer, expand Databases.
Find and expand Datawarehouse.
Expand Security.
Expand Schemas.
You should see:
bronze
silver
gold

If the schemas do not appear immediately, right-click Schemas and select Refresh.

You can also verify the schemas using SQL:

USE Datawarehouse;
GO

SELECT name
FROM sys.schemas
WHERE name IN ('bronze', 'silver', 'gold');


The query should return the three schemas if they were created successfully.

Note: If you have already created the Datawarehouse database or the schemas, running the CREATE statements again will produce an "already exists" error. In that case, either create them only once or use IF NOT EXISTS checks.
