CREATE DATABASE crowdfunding_db;
\c crowdfunding_db;

CREATE TABLE category(
        category_id VARCHAR NOT NULL PRIMARY KEY,
        category_name VARCHAR NOT NULL
        );

CREATE TABLE subcategory(
        subcategory_id VARCHAR NOT NULL PRIMARY KEY,
        subcategory_name VARCHAR NOT NULL 
);

CREATE TABLE contacts(
        contact_id INTEGER NOT NULL PRIMARY KEY,
        first_name VARCHAR NOT NULL, 
        last_name VARCHAR NOT NULL
);

CREATE TABLE campaigns(
        cf_id INTEGER NOT NULL,
        contact_id INTEGER NOT NULL,
        company_name VARCHAR NOT NULL,
        description VARCHAR NOT NULL,
        goal FLOAT NOT NULL,
        pledged FLOAT NOT NULL,
        outcome VARCHAR NOT NULL,
        backers_count INTEGER NOT NULL,
        country VARCHAR NOT NULL,
        currency VARCHAR NOT NULL,
        launch_date TIMESTAMP NOT NULL,
        end_date TIMESTAMP NOT NULL,
        category_id VARCHAR NOT NULL,
        subcategory_id VARCHAR NOT NULL,
        FOREIGN KEY (contact_id)REFERENCES contacts(contact_id),
        FOREIGN KEY (category_id) REFERENCES category(category_id),
        FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


Select * from category
Select * from subcategory
Select * from contacts
Select * from campaigns