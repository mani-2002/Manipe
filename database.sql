create database manipe;
use manipe;
CREATE TABLE user(
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    ifsc_code VARCHAR(255) UNIQUE,
    account_number VARCHAR(255) UNIQUE,
    customer_id VARCHAR(255) UNIQUE,
    upi_id VARCHAR(255) UNIQUE,
    balance DECIMAL(10, 2) DEFAULT 5000,
    is_primary BOOLEAN DEFAULT 0
);
INSERT INTO user (fullname,mobile_number,email,password,role) VALUES ('Manikanta','8522845343','mani@manipe.com','mani@manipe.com','admin');

INSERT INTO user (fullname,mobile_number,email,password,ifsc_code,account_number,customer_id,upi_id) VALUES ('Harshathkumar Bayyaram','8977801788','hars@manipe.com','hars@manipe.com','ABCD0001','918977801788','CUST0001','918977801788@manipe');
INSERT INTO user (fullname,mobile_number,email,password,ifsc_code,account_number,customer_id,upi_id,is_primary) VALUES ('Harshathkumar Bayyaram','8977801788','hars@manipe.com','hars@manipe.com','ABCD0002','818977801788','CUST0002','818977801788@manipe','1');
INSERT INTO user (fullname,mobile_number,email,password,ifsc_code,account_number,customer_id,upi_id) VALUES ('Ramavathar Kanneboina','6281184748','rama@manipe.com','rama@manipe.com','ABCD0004','916281184748','CUST0004','916281184748@manipe');
INSERT INTO user (fullname,mobile_number,email,password,ifsc_code,account_number,customer_id,upi_id,is_primary) VALUES ('Ramavathar Kanneboina','6281184748','rama@manipe.com','rama@manipe.com','ABCD0005','816281184748','CUST0005','816281184748@manipe','1');
select * from user;
truncate table user;
drop table user;

CREATE TABLE transaction_history (
    id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_id VARCHAR(50) NOT NULL UNIQUE,
    customer_id VARCHAR(255),
    account_number VARCHAR(255),
    ifsc_code VARCHAR(255),
    upi_id VARCHAR(255),
    mobile_number VARCHAR(255),
    transaction_date VARCHAR(255) NOT NULL,
    amount VARCHAR(50) NOT NULL,
    status VARCHAR(255) NOT NULL,
    payment_method VARCHAR(255) NOT NULL,
    currency VARCHAR(50) DEFAULT 'rupees',
    from_username VARCHAR(255) NOT NULL,
    to_username VARCHAR(255) NOT NULL
);

select * from transaction_history;
truncate table transaction_history;
drop table transaction_history;