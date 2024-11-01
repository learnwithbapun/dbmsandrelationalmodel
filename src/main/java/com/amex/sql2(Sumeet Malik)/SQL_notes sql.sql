Class 1: (Intro to DBMS)


SQL Query :

-- Create a database
CREATE DATABASE IF NOT EXISTS sql_lectures;
USE sql_lectures;

CREATE TABLE Students (
	id INT,
    first_name VARCHAR(10),
    last_name VARCHAR(10)
);


-- Delete a table
DROP TABLE IF EXISTS Students;

-- Delete a database
DROP DATABASE IF EXISTS sql_lectures;



Class 2 Schema Design:

-- DROP DATABASE IF EXISTS scaler_lect;

CREATE DATABASE IF NOT EXISTS scaler_lect;
USE scaler_lect;

-- 1st way
CREATE TABLE students (
	id INT PRIMARY KEY,
    first_name VARCHAR(10),
    last_name VARCHAR(10),
    email VARCHAR(20),
    phone VARCHAR(10)
);
DROP TABLE IF EXISTS students;

-- 2nd way (allows creating composite primary keys)
CREATE TABLE students (
	id INT,
    first_name VARCHAR(10),
    last_name VARCHAR(10),
    email VARCHAR(20),
    phone VARCHAR(10),
    PRIMARY KEY (id)
);
DROP TABLE IF EXISTS students;

-- 3rd way
CREATE TABLE students (
	id INT,
    first_name VARCHAR(10),
    last_name VARCHAR(10),
    email VARCHAR(20),
    phone VARCHAR(10)
);

ALTER TABLE students
	ADD CONSTRAINT PRIMARY KEY (id);
    
-- UNIQUE KEY
CREATE TABLE students (
	id INT PRIMARY KEY,
    first_name VARCHAR(10),
    last_name VARCHAR(10),
    email VARCHAR(20),
    phone VARCHAR(20)
);

ALTER TABLE students
	ADD CONSTRAINT UK_Email UNIQUE KEY (email);
    
ALTER TABLE students
	ADD CONSTRAINT UK_Phone UNIQUE KEY (phone);
    
    
CREATE TABLE batches (
	id INT PRIMARY KEY,
    name VARCHAR(10)
);

ALTER TABLE students
	ADD bid INT;
    
ALTER TABLE students
	MODIFY bid INT NOT NULL;
    
ALTER TABLE students
	ADD CONSTRAINT FK_Students_Batches FOREIGN KEY (bid)
    REFERENCES batches (id);

    
    

Class 3:


