CREATE DATABASE IF NOT EXISTS startersql;
USE startersql;


CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    salary DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);
select * from users;

select email from users;

select * from users WHERE gender = 'Male';
select * from users WHERE gender <> 'Female';
select * from users WHERE gender = 'Male';
select * from users WHERE date_of_birth is null;
select * from users WHERE date_of_birth between '1900-09-09' and '1999-09-09';
select * from users where  gender in('Male', 'Female');
select * from users where gender='Female' and salary>'70000';
select * from users where gender='Male' and salary>'70000';
select * from users where gender='Male'and salary>'50000' order by date_of_birth asc limit 10;
select * from users where salary > '60000' order by created_at asc limit 5;
select * from users order by salary desc;
select * from users where salary between 50000 and 70000 order by  salary;
update  users set salary =45000, email='kushawha@gmail' where id='1';
select * from users;
UPDATE users SET salary=salary+10000 WHERE id=1;
update users Set salary=salary+10000 where salary>60000;
delete from users where id =1;
select * from users;
select count(*) from users;
select count(*) from users where gender = 'Male';
select count(*) from users where gender = 'Female';
select max(salary) as max_salary, min(salary) as min_salary from users;
select sum(salary) as total from users;
select avg(salary) as agv from users;
select gender, avg(salary) as T_avg from users group by gender;
select gender, sum(salary) as T_avg from users group by gender;
select salary,
round(salary) as round,
FLOOR(salary) as floor,
ceil(salary) as ceol
from users;
set autocommit=0;
delete from users where id =5;
select * from users ;
rollback;




