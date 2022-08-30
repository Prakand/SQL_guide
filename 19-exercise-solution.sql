-- 1-create_database

-- CREATE DATABASE online_shop;

-- 2-create_table

-- CREATE TABLE products(
--     name VARCHAR(200),
--     price NUMERIC(5,2),
--     description TEXT,
--     amountt_in_stock SMALLINT,
--     image_path VARCHAR(500)

-- );


-- 3-inserting dummy data

-- INSERT INTO products(name,price,description,amountt_in_stock,image_path)
-- VALUES('a book',150,'this is a novel',40,'uploads/image/products/a-book.jpg');

-- 4-constraints
-- for mysql

-- ALTER TABLE products
-- MODIFY COLUMN name VARCHAR(200) NOT NULL,
-- MODIFY COLUMN price NUMERIC(5,2) NOT NULL CHECK(price > 0),
-- MODIFY COLUMN description TEXT NOT NULL,
-- MODIFY COLUMN amountt_in_stock SMALLINT CHECK(amountt_in_stock >= 0);


-- 5-constraint for postgesql

-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price>0),
-- ADD CONSTRAINT amountt_in_stock CHECK (amountt_in_stock>=0);

-- 6-add_id_colummn_for_mysql

-- ALTER TABLE products
-- ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;


-- 7-ADD_CONSTAINT_FOR_POSTGRES

ALTER TABLE products
ADD COLUMN id SERIAL PRIMARY KEY;