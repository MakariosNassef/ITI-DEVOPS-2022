***creat database and tables**
1- CREATE DATABASE lab_sql;
2- CREATE TABLE student ( id INT PRIMARY KEY, name VARCHAR(50), email VARCHAR(50) UNIQUE, phone INT);
3- CREATE TABLE subject ( id INT PRIMARY KEY, name VARCHAR(50), sub_desc VARCHAR(50), max_score INT);
4-CREATE TABLE exam ( id INT PRIMARY KEY, 
                      date DATE);
5-CREATE TABLE stu_grades ( stu_id INT,
                            sub_id int, 
                            exam_id int, 
                            grade int, 
                            PRIMARY KEY(stu_id,sub_id,exam_id));

-----------------------------------------------------------------------------------------------------
1- Add gender column for the student table. It holds two values (male or female)
   ***ALTER TABLE student ADD COLUMN gender ENUM('male','female');***
2- Insert your classmates’ data (3 rows for each table)
3- Add birth date column for the student table
4- Add foreign key constrains in Your Tables with options on
  delete cascaded.
5- Display all students’ information.
6- Display the number of males and females.
7- Display male students who are born before 1991-10-01
8- Display students’ names that begin with A
9- Display the repeated first names and their counts if higher
  than 2
10- Display students’ names, their score and subject name.
11- Create view to store students’ name with their subjects’
  names.
