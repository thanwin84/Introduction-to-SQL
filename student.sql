--creating table
CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);
--another way of writting primary key
--creating table
CREATE TABLE student(
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);
--we can see the table
DESCRIBE student;
--we can also delete table
DROP TABLE student;
--WE can add another column to this table
ALTER TABLE student ADD gpa DECIMAL(5, 2);
--inserting data into table
INSERT INTO student VALUES(1, 'Jack', 'Biology');
 --creating table
--name cannot be null
CREATE TABLE student(
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);
 -- we can also set default value in our table
                                             
    CREATE TABLE student(
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
--creating table
--we can also use auto increament for primary id
CREATE TABLE student(
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
--inserting values into student table
INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student(name, major) VALUES('Kate', 'Socialogy');
--updating Biology to Bio only in where major is Biology
UPDATE student
SET major = 'Bio'
WHERE major = 'Biology'
--updating major whose studnet id is 3
UPDATE student
set major = 'Computer Sceince'
WHERE student_id = 3
--updaing using or operator
UPDATE student
set major = 'BioChemisty'
WHERE major = 'Bio' or major = 'Physics'
--it will affect in all rows since we are not using WHERE
UPDATE student
SET major = 'Internet of things'
--deleting row whose student id is 1
DELETE FROM student
WHERE student_id = 1
--getting all info in student table
-- *means everything
SELECT *
FROM student;
--getting only name column
SELECT name
FROM student;
--selecting anme and major and sorting them by descending order
SELECT student.name, student.major
FROM student 
ORDER BY name DESC;
--sorting by name, if name is equal then sort by major
SELECT student.name, student.major
FROM student 
ORDER BY name, major;\
-- selecting all, then sort by student_id decreasing order
-- only grab 3 row by setting LIMIT= 3
SELECT*
FROM student 
ORDER BY student_id DESC
LIMIT 3;
--filtering only computer science student
SELECT*
FROM student 
WHERE major = 'Computer Science'
--filtering by two majors 
SELECT * FROM student 
WHERE major = 'Computer Science' OR major ='Physics';
--using NOT to filter 
SELECT * FROM student 
WHERE NOT major = 'Computer Science' AND NOT major ='Physics';
--selecting specific name row
SELECT * FROM student 
WHERE name IN('claire', 'Kate', 'win');

--we can add another column and setting default value
ALTER TABLE student ADD nationality VARCHAR(20) DEFAULT('China');
