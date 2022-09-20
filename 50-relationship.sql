CREATE TABLE employees(
    -- id INT PRIMARY KEY AUTO_INCREMENT,   -- Mysql
    id SERIAL PRIMARY KEY,                -- Postgre
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL
);


CREATE TABLE intranet_accounts(
    -- id INT PRIMARY KEY AUTO_INCREMENT,    -- myswl
    id SERIAL PRIMARY KEY,                 -- postgre
    email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);