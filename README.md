# SQL-Data-Warehouse-Project
##🚀 Data Warehouse & Analytics Project

Welcome to my Data Warehouse & Analytics Project.

This project is an end-to-end data warehousing solution built with SQL Server and T-SQL, taking raw data from multiple source systems and transforming it into a structured, analytics-ready data warehouse.

The goal isn't simply to produce a set of SQL queries. It's to demonstrate how I approach a data problem from raw source data through to a reliable analytical model including data ingestion, transformation, data quality, dimensional modelling, and business-focused analytics.

I'm particularly interested in the intersection between data analytics and data engineering, and this project is part of my journey toward building stronger engineering-focused skills while applying the analytical experience I already have.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##🏗️ Data Architecture
The warehouse follows a Medallion Architecture, separating the data pipeline into Bronze, Silver, and Gold layers.

🥉 Bronze — Raw

Raw data is ingested from CSV files into SQL Server with minimal transformation. This layer preserves the source data and provides a reliable starting point for downstream processing.

🥈 Silver — Clean & Transform

Data is cleaned, standardised, validated, and transformed. This layer addresses issues such as inconsistent formats, invalid values, duplicates, and data quality problems identified during exploration.

🥇 Gold — Business-Ready

Cleaned data is transformed into a dimensional model using a star schema, providing a clear and efficient structure for analytical queries and reporting.

Source → Bronze → Silver → Gold → Analytics

##🎯 Project Objectives
The project focuses on building a complete data pipeline capable of:

Designing a scalable warehouse structure
Ingesting data from multiple source systems
Cleaning and standardising raw data
Identifying and resolving data quality issues
Integrating ERP and CRM data
Building fact and dimension tables
Implementing a star schema for analytics
Creating reusable SQL transformations
Validating data throughout the pipeline
Producing business-focused analytical insights
The final warehouse is designed to answer questions around customer behaviour, product performance, and sales trends.

##🔄 ETL / Data Engineering
The pipeline is structured into separate stages to make the transformation process easier to understand, maintain, and troubleshoot.

Bronze Layer
Extract data from source CSV files
Load source data into SQL Server
Preserve the original structure and values
Silver Layer
Clean and standardise data
Handle invalid and missing values
Remove duplicates
Apply business rules
Resolve inconsistencies across source systems
Prepare data for modelling
Gold Layer
Build dimension tables
Build fact tables
Establish relationships
Apply surrogate keys where appropriate
Create an analytics-ready star schema
🧩 Data Modelling
A star schema is used in the Gold layer to provide a simple and intuitive structure for analytical workloads.

The model separates:

Dimensions

Customers
Products
Dates / other descriptive entities
Facts

Sales transactions
Measures and business metrics
This approach allows analytical queries to remain straightforward while providing a foundation for reporting and BI tools.

##🧪 Data Quality
Data quality is treated as an important part of the pipeline rather than something addressed after the warehouse is built.

Validation includes checks for:

Missing values
Duplicate records
Invalid dates
Invalid or inconsistent values
Referential integrity
Unexpected record counts
Data consistency between source systems
The tests/ directory contains SQL-based checks used to validate the resulting datasets.

##📊 Analytics
Once the warehouse has been built, SQL is used to explore the data and generate business insights across areas including:

Customer Behaviour
Customer purchasing patterns
Customer segmentation
Revenue contribution
Customer activity
Product Performance
Top-performing products
Product sales trends
Revenue contribution
Product category performance
Sales Trends
Revenue over time
Sales volumes
Customer and product trends
Key business metrics
The objective is to demonstrate how a well-designed warehouse can turn raw operational data into information that can support business decisions.

##🛠️ Technology
Core

SQL Server
T-SQL
SQL Server Management Studio (SSMS)
Data & Documentation

CSV
Draw.io
Markdown
Version Control

Git
GitHub
##📂 Repository Structure
data-warehouse-project/
│
├── datasets/                  # Raw ERP and CRM datasets
│
├── docs/                      # Architecture, modelling and documentation
│   ├── etl.drawio
│   ├── data_architecture.drawio
│   ├── data_catalog.md
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── naming-conventions.md
│
├── scripts/                   # SQL pipeline and transformation scripts
│   ├── bronze/
│   ├── silver/
│   └── gold/
│
├── tests/                     # Data quality and validation scripts
│
├── README.md
├── LICENSE
├── .gitignore
└── requirements.txt

##📈 What I'm Building
This project represents more than a SQL exercise. I'm using it to develop the skills required to work across the wider data lifecycle  from understanding business requirements and analysing source data through to building reliable data pipelines and analytical data models.

Future improvements could include:

Incremental data loading
Pipeline orchestration
Automated testing
Data quality monitoring
Logging and error handling
CI/CD
Cloud-based storage and warehousing
Performance optimisation
The aim is to continue evolving this project from a local SQL Server implementation toward a more production-oriented data engineering workflow.

##🚀 Why This Project?
I started my journey in Data Analytics, where the focus is often on understanding data and turning it into useful insights.

I'm now expanding that skill set into Data Engineering learning how the data gets collected, transformed, validated, modeled, and ultimately made available for analysis.

This project is one step in that progression.

Analyse the data → Understand the problem → Engineer the solution → Deliver reliable data.
