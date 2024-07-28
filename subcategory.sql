DROP TABLE IF EXISTS subcategory;
CREATE TABLE subcategory(
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);
SELECT *
FROM subcategory;