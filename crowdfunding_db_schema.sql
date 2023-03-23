-- Database: crowdfunding_db

-- DROP DATABASE IF EXISTS crowdfunding_db;

CREATE DATABASE crowdfunding_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Create tables for category, subcategory
CREATE TABLE category (
    category_id VARCHAR NOT NULL, 
	category VARCHAR NOT NULL,
	PRIMARY KEY (category_id));

CREATE TABLE subcategory (
    subcategory_id VARCHAR NOT NULL, 
	subcategory VARCHAR NOT NULL,
	PRIMARY KEY (subcategory_id));

-- Create table for contacts
CREATE TABLE contacts (
	contact_id INT NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	PRIMARY KEY (contact_id));

-- Create table for campaign
CREATE TABLE campaign (
	cf_id INTEGER NOT NULL,
	contact_id INTEGER NOT NULL,
	company_name VARCHAR,
	description VARCHAR,
	goal NUMERIC(10,2),
	pledged NUMERIC(10,2),
	outcome VARCHAR,
	backers_count INTEGER,
	country VARCHAR,
	currency VARCHAR,
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR NOT NULL,
	subcategory_id VARCHAR NOT NULL,
	PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id));

-- After importing the CSV file, check the data loaded
SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;

SELECT *
FROM campaign;

-- Create view from query
CREATE VIEW crowdfunding_view AS
SELECT c.company_name, c.pledged, ct.first_name, ct.last_name, ct.email, ca.category, sc.subcategory
FROM campaign c
JOIN category ca ON c.category_id = ca.category_id
JOIN subcategory sc ON c.subcategory_id = sc.subcategory_id
JOIN contacts ct ON c.contact_id = ct.contact_id;

SELECT *
FROM crowdfunding_view;

