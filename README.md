# Crowdfunding_ETL
Project 2 ETL (Extract Transform Load) Challenge

By A.Narag

March 23, 2023

This challenge has four parts contained in the ETL_Mini_Project_ANarag.ipynb Juptyer Notebook:

Part 1: Create the Category and Subcategory DataFrames
  1. Extract and transform the crowdfunding.xlsx Excel data to create a category DataFrame 
  2. Export the category DataFrame as category.csv 
  3. Extract and transform the crowdfunding.xlsx Excel data to create a subcategory DataFrame
  4. Export the subcategory DataFrame as subcategory.csv 

Part 2: Create the Campaign DataFrame
  1. Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame
  2. Export the campaign DataFrame as campaign.csv 

Part 3: Create the Contacts DataFrame
  1. Choose one of the following two options for extracting and transforming the data from the contacts.xlsx Excel data: Option 1: Use Python dictionary methods OR Option 2: Use regular expressions.

Part 4: Create the Crowdfunding Database
  1. Inspect the four CSV files, and then sketch an ERD of the tables by using QuickDBDLinks to an external site.
  2. Use the information from the ERD to create a table schema for each CSV file.
  3. Save the database schema as a Postgres file named crowdfunding_db_schema.sql
  4. Create a new Postgres database, named crowdfunding_db
  5. Using the database schema, create the tables in the correct order to handle the foreign keys.
  6. Verify the table creation by running a SELECT statement for each table.
  7. Import each CSV file into its corresponding SQL table.
  8. Verify that each table has the correct data by running a SELECT statement for each.
