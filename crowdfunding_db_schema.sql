CREATE TABLE Category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(100)
);

CREATE TABLE Subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR(100)
);

CREATE TABLE Contact (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Campaign (
    cf_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100),
    description TEXT,
    goal NUMERIC,
    pledged NUMERIC,
    outcome VARCHAR(100),
    backers_count INT,
    country VARCHAR(100),
    currency VARCHAR(100),
    launch_date DATE,
    end_date DATE,
	contact_id INT REFERENCES Contact(contact_id),
    category_id VARCHAR REFERENCES Category(category_id),
    subcategory_id VARCHAR REFERENCES Subcategory(subcategory_id)
);

SELECT * FROM Subcategory;
SELECT * FROM Contact;
SELECT * FROM Category;
SELECT * FROM Campaign;