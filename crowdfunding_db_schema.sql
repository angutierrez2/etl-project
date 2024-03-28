-- Create category table schema
CREATE TABLE category (
  category_id VARCHAR(50),
  category VARCHAR(50)
);

-- Add values from CSV file to category table
COPY category (category_id, category)
FROM 'C:\Users\16025\DatabaseStuff\ETLProject\etl-project\Resources\category.csv'
DELIMITER ','
CSV HEADER;

-- Show table
SELECT * FROM category;

-- Create subcategory table schema
CREATE TABLE subcategory (
  subcategory_id VARCHAR(50),
  subcategory VARCHAR(50)
);

-- Add values from CSV file to subcategory table
COPY subcategory (subcategory_id, subcategory)
FROM 'C:\Users\16025\DatabaseStuff\ETLProject\etl-project\Resources\subcategory.csv'
DELIMITER ','
CSV HEADER;

-- Show table
SELECT * FROM subcategory;

-- Create campaign table schema
CREATE TABLE campaign (
  cf_id VARCHAR(50),
  contact_id VARCHAR(50),
  company_name VARCHAR(50),
  description VARCHAR(200),
  goal VARCHAR(50),
  pledged VARCHAR(50),
  backers_count INT,
  country VARCHAR(50),
  currency VARCHAR(50),
  launch_date VARCHAR(50),
  end_date VARCHAR(50),
  category_id VARCHAR(50),
  subcategory_id VARCHAR(50)
);

-- Add values from CSV file to campaign table
COPY campaign (cf_id, contact_id, company_name, description, goal, pledged, backers_count, country, currency, launch_date, end_date, category_id, subcategory_id)
FROM 'C:\Users\16025\DatabaseStuff\ETLProject\etl-project\Resources\campaign.csv'
DELIMITER ','
CSV HEADER;

-- Show table
SELECT * FROM campaign
