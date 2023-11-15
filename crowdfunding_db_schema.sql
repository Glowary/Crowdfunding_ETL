CREATE TABLE Categories (
    category_id VARCHAR PRIMARY KEY NOT NULL,
    category VARCHAR(100)
);

CREATE TABLE Subcategories (
    subcategory_id VARCHAR PRIMARY KEY NOT NULL,
    subcategory VARCHAR(100)
);

CREATE TABLE Contacts (
    contact_id VARCHAR(100) PRIMARY KEY NOT NULL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Campaigns (
    cf_id INT PRIMARY KEY NOT NULL,
    contact_id INT REFERENCES Contact(contact_id),
    company_name VARCHAR(255),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(50),
    launch_date DATE,
    end_date DATE,
    category_id INT REFERENCES Category(category_id),
    subcategory_id INT REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Category;
SELECT * FROM Subcategory;
SELECT * FROM Contact;
SELECT * FROM Campaign;
