DROP TABLE IF EXISTS category;
CREATE TABLE category(
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);
SELECT *
FROM category;