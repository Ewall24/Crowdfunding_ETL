DROP TABLE IF EXISTS contacts;
CREATE TABLE contacts(
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL
);
SELECT *
FROM contacts;