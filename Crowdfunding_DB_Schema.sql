CREATE TABLE "category" (
    "category_id" VARCHAR(50) NOT NULL,
    "category" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(50) NOT NULL,
    "subcategory" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);
CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);
CREATE TABLE "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(50) NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(50) NOT NULL,
    "currency" VARCHAR(50) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(50) NOT NULL,
    "subcategory_id" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id")
);



/*
-- Create a view to combine all tables
CREATE VIEW combined_data AS
SELECT
    cam.cf_id,
    cam.contact_id,
    con.first_name,
    con.last_name,
    con.email,
    cam.company_name,
    cam.description,
    cam.goal,
    cam.pledged,
    cam.outcome,
    cam.backers_count,
    cam.country,
    cam.currency,
    cam.launched_date,
    cam.end_date,
    cam.category_id,
    cat.category,
    cam.subcategory_id,
    subcat.subcategory
FROM
    campaign cam
JOIN
    contacts con ON cam.contact_id = con.contact_id
JOIN
    category cat ON cam.category_id = cat.category_id
JOIN
    subcategory subcat ON cam.subcategory_id = subcat.subcategory_id;
-- Select from the view to print the combined table
SELECT * FROM combined_data;
11:47
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;
CREATE TABLE category (
    category_id VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (category_id)
);
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) NOT NULL,
    subcategory VARCHAR(50) NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (subcategory_id)
);
CREATE TABLE contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (contact_id)
);
CREATE TABLE campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    description TEXT NOT NULL,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50) NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR(50) NOT NULL,
    currency VARCHAR(50) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(50) NOT NULL,
    subcategory_id VARCHAR(50) NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (cf_id)
);
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);
ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);
-- Create a view to combine all tables
CREATE VIEW combined_data AS
SELECT
    cam.cf_id,
    cam.contact_id,
    con.first_name,
    con.last_name,
    con.email,
    cam.company_name,
    cam.description,
    cam.goal,
    cam.pledged,
    cam.outcome,
    cam.backers_count,
    cam.country,
    cam.currency,
    cam.launched_date,
    cam.end_date,
    cam.category_id,
    cat.category,
    cam.subcategory_id,
    subcat.subcategory
FROM
    campaign cam
JOIN
    contacts con ON cam.contact_id = con.contact_id
JOIN
    category cat ON cam.category_id = cat.category_id
JOIN
    subcategory subcat ON cam.subcategory_id = subcat.subcategory_id;
-- Select from the view to print the combined table
SELECT * FROM combined_data;
*/