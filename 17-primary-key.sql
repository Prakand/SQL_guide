-- DROP TABLE users;
-- DROP TABLE employers;
-- DROP TABLE conversations;


-- CREATE TYPE employment_status AS ENUM('self-employed','employed','unemplyed');  --for postgresql


CREATE TABLE users(
    --id SERIAL PRIMARY KEY,   for postgresql
    id INT PRIMARY KEY AUTO_INCREMENT,   --myssql
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED AS (CONCAT(first_name,'',last_name)),
    yearly_salry INT CHECK (yearly_salry>0),

    current_status ENUM ('self-employed','employed','unemplyed') -- mysql
    --current_status employment_status
);


CREATE TABLE employers(
    --id SERIAL PRIMARY KEY,
    id INT PRIMARY KEY AUTO_INCREMENT,  --mysql
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue>0),
    is_hiring BOOLEAN DEFAULT FALSE
);


CREATE TABLE conversations(
    --id SERIAL PRIMARY KEY,
    id INT PRIMARY KEY AUTO_INCREMENT,  -- mysql
    user_id INT,
    employera_id INT,
    message TEXT NOT NULL
);



