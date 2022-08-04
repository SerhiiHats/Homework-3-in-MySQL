CREATE DATABASE Cadry;

USE Cadry;

CREATE TABLE Employees (
id_emp INT AUTO_INCREMENT NOT NULL,
last_name_emp VARCHAR(50) NOT NULL,
first_name_emp VARCHAR(50) NOT NULL,
middle_name_emp VARCHAR(50) NOT NULL DEFAULT ' ',
gender_emp VARCHAR(9) NOT NULL,
birthday_emp DATE NOT NULL,
passport_emp CHAR(10) NOT NULL UNIQUE,
rnokpp_emp CHAR(10) NOT NULL UNIQUE,
date_of_job_emp DATE NOT NULL,
PRIMARY KEY (id_emp)
);


INSERT INTO cadry.employees (last_name_emp, first_name_emp, middle_name_emp, gender_emp, birthday_emp, passport_emp, rnokpp_emp, date_of_job_emp) 
VALUES 
('Буюклі', 'Людмила', 'Миколаївна', 'famale', '1987-11-27', 'KM781187', '3245425874',  '2011-01-15'),
('Даниленко', 'Денис', 'Іванович', 'male', '1988-07-15', 'KE158477', '2924577711', '2013-04-25'),
('Чекан', 'Оксана', 'Володимирівна', 'famale', '1980-02-10', 'KM754365', '2758425654', '2014-07-11'),
('Антоненко', 'Іван', 'Анатолійович', 'male', '1995-03-14', 'МК157785', '3215215984', '2020-10-17'),
('Балева', 'Наталя', 'Олегівна', 'famale', '1990-06-10', 'KM451365', '3154852741', '2021-03-21');

SELECT * FROM Cadry.employees;

CREATE TABLE Employee_address(
id_addr INT AUTO_INCREMENT,
id_emp INT NOT NULL,
main_place VARCHAR(30) NOT NULL,
zip_cod VARCHAR(10) NOT NULL,
region VARCHAR(30) NOT NULL DEFAULT ' ',
area VARCHAR(30) NOT NULL DEFAULT ' ',
set_city VARCHAR(10) NOT NULL,
city VARCHAR(30) NOT NULL,
set_street VARCHAR(10) NOT NULL,
street VARCHAR(30) NOT NULL,
numb_building VARCHAR(10) NOT NULL,
numb_korpus VARCHAR(10) NOT NULL DEFAULT ' ',
numb_room VARCHAR(10) NOT NULL DEFAULT ' ',
PRIMARY KEY (id_addr),
FOREIGN KEY(id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, set_city, city, set_street, street, numb_building)
VALUE (1, 'basic', '65040', 'місто', 'Одеса', 'вул.', 'Богдана Хмельницького', '27');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, region, area, set_city, city, set_street, street, numb_building, numb_korpus, numb_room)
VALUE (1, 'secondary', '67668', 'Одеська', 'Біляївський', 'селище', 'Великий Дальник', 'вул.', 'Тираспольська', '79', '2', '15');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, region, set_city, city, set_street, street, numb_building, numb_room)
VALUE (2, 'basic', '67700', 'Одеська', 'місто', 'Білгород-Днестровський', 'площа', 'Миру', '15', '27');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, region, set_city, city, set_street, street, numb_building)
VALUE (3, 'basic', '68600', 'Одеська', 'місто', 'Ізмаїл', 'проспект', 'Суворова', '215');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, region, area, set_city, city, set_street, street, numb_building)
VALUE (3, 'secondary', '68355', 'Одеська', 'Ізмаїльський', 'місто', 'Вилкове', 'вул.', 'Богдана Хмельницького', '89');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, set_city, city, set_street, street, numb_building, numb_korpus, numb_room)
VALUE (4, 'basic', '65078', 'місто', 'Одеса', 'шоссе', 'Миколаївське', '26', '3', '115');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, set_city, city, set_street, street, numb_building, numb_korpus, numb_room)
VALUE (5, 'basic', '65081', 'місто', 'Одеса', 'вул.', 'Бочарова', '78', '5', '31');

INSERT INTO cadry.Employee_address (id_emp, main_place, zip_cod, region, area, set_city, city, set_street, street, numb_building)
VALUE (4, 'secondary', '68350', 'Одеська', 'Ізмаїльський', 'селище', 'Приморське', 'вул.', 'Наберіжна', '7');

SELECT * FROM Cadry.Employee_address;

CREATE TABLE Employee_phone(
id_phone INT AUTO_INCREMENT,
id_emp INT NOT NULL,
info_of_phone VARCHAR(30) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE,
PRIMARY KEY (id_phone),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (1, 'мобільний', '+380678514751');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (1, 'домашній', '+380487517777');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (1, 'мобільний чоловіка', '+380679548521');

INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (2, 'мобільний Київстар', '+380679512575');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (2, 'мобільний Лайф', '+380738529614');

INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (3, 'мобільний', '+380638547596');

INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (4, 'мобільний', '+380977891254');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (4, 'дошашній', '+380487568498');

INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (5, 'мобільний', '+380673659814');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (5, 'мобільний чоловіка', '+380678579685');
INSERT INTO Cadry.Employee_phone (id_emp, info_of_phone, phone) VALUE (5, 'домашній', '+380487148759');

SELECT * FROM Cadry.Employee_phone;

CREATE TABLE Employee_email(
id_email INT AUTO_INCREMENT,
id_emp INT NOT NULL,
info_of_email VARCHAR(30) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
PRIMARY KEY (id_email),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (1, 'особиста пошта', 'milkon_drivel@gmail.com.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (1, 'рабоча пошта', 'buykli_ludmila_infox@od.gov.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (2, 'рабоча пошта', 'danilenko_denus_infox@od.gov.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (2, 'особиста пошта', 'red_devil@gmail.com.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (3, 'рабоча пошта', 'checan_oksana_infox@od.gov.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (3, 'особиста пошта', 'alexxchekan@ukr.net');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (4, 'рабоча пошта', 'antonenko_ivan_infox@od.gov.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (5, 'рабоча пошта', 'baleva_nataliya_infox@od.gov.ua');
INSERT INTO Cadry.Employee_email (id_emp, info_of_email, email) VALUE (5, 'особиста пошта', 'doru_ataliya@gmail.com.ua');

SELECT * FROM cadry.Employee_email;

CREATE TABLE Employee_married(
id_married INT AUTO_INCREMENT,
id_emp INT NOT NULL UNIQUE,
married VARCHAR(20) NOT NULL,
last_name_marr VARCHAR(50) NOT NULL DEFAULT ' ',
first_name_marr VARCHAR(50) NOT NULL DEFAULT ' ',
middle_name_marr VARCHAR(50) NOT NULL DEFAULT ' ',
gender_emp_mar VARCHAR(9) NOT NULL DEFAULT ' ',
birthday_emp_mar DATE,
PRIMARY KEY (id_married),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cadry.Employee_married (id_emp, married, last_name_marr, first_name_marr, middle_name_marr, gender_emp_mar, birthday_emp_mar) VALUE
(1, 'married', 'Буюклі', 'Олексій', 'Валерійович', 'male', '1985-11-05');
INSERT INTO cadry.Employee_married (id_emp, married) VALUE (2, 'no married');
INSERT INTO cadry.Employee_married (id_emp, married) VALUE (3, 'no married');
INSERT INTO cadry.Employee_married (id_emp, married) VALUE (4, 'no married');
INSERT INTO cadry.Employee_married (id_emp, married, last_name_marr, first_name_marr, middle_name_marr, gender_emp_mar, birthday_emp_mar) VALUE
(5, 'married', 'Балєв', 'Денис', 'Олегович', 'male', '1987-03-15');

SELECT * FROM cadry.Employee_married;

CREATE TABLE Employee_childs(
id_childs INT AUTO_INCREMENT,
id_emp INT NOT NULL,
childs VARCHAR(15) NOT NULL,
last_name_child VARCHAR(50) NOT NULL DEFAULT ' ',
first_name_child VARCHAR(50) NOT NULL DEFAULT ' ',
middle_name_child VARCHAR(50) NOT NULL DEFAULT ' ',
gender_emp_child VARCHAR(9) NOT NULL DEFAULT ' ',
birthday_emp_child DATE,
PRIMARY KEY (id_childs),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cadry.Employee_childs (id_emp, childs, last_name_child, first_name_child, middle_name_child, gender_emp_child, birthday_emp_child) VALUE
(1, 'yes', 'Буюклі', 'Марія', 'Олексіївна', 'famale', '2005-05-15');
INSERT INTO cadry.Employee_childs (id_emp, childs, last_name_child, first_name_child, middle_name_child, gender_emp_child, birthday_emp_child) VALUE
(1, 'yes', 'Буюклі', 'Антон', 'Олексіїйович', 'male', '2007-11-27');
INSERT INTO cadry.Employee_childs (id_emp, childs) VALUE (2, 'no childs');
INSERT INTO cadry.Employee_childs (id_emp, childs, last_name_child, first_name_child, middle_name_child, gender_emp_child, birthday_emp_child) VALUE
(3, 'yes', 'Чекан', 'Кристина', 'Сергіївна', 'famale', '2008-07-02');
INSERT INTO cadry.Employee_childs (id_emp, childs) VALUE (4, 'no childs');
INSERT INTO cadry.Employee_childs (id_emp, childs, last_name_child, first_name_child, middle_name_child, gender_emp_child, birthday_emp_child) VALUE
(5, 'yes', 'Балєв', 'Сергій', 'Денисович', 'male', '2002-11-21');

SELECT * FROM cadry.Employee_childs;

CREATE TABLE Employee_title_jobs(
id_title INT AUTO_INCREMENT,
id_emp INT NOT NULL,
title_jobs VARCHAR(50) NOT NULL DEFAULT 'trenee',
description_title_jobs VARCHAR(200) NOT NULL DEFAULT ' ',
salary_emp DOUBLE NOT NULL DEFAULT '0',
PRIMARY KEY (id_title),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cadry.employee_title_jobs (id_emp, title_jobs, description_title_jobs, salary_emp) 
VALUES 
(1, 'sales', 'активні продажі продукту компанії', 10597.5),
(2, 'accountant', 'ведення бухгалтерії, розрахункових операцій та звітності компанії', 12777.0),
(3, 'lawyer', 'юридичний супровід угод та представництво інтересів компанії у судових, правоохоронних та інших органах', 12595.0),
(4, 'sales', 'активні продажі продукту компанії', 14101.0),
(5, 'director', 'здійснення керівництва, виконння завдань та досяження цілей відповідно до статуту та плану розвитку компанії', 17500.0);

SELECT * FROM cadry.employee_title_jobs;

CREATE TABLE Employee_bank_accounts(
id_acc INT AUTO_INCREMENT,
id_emp INT NOT NULL,
iban_emp CHAR(29) NOT NULL UNIQUE,
name_bank VARCHAR(100) NOT NULL DEFAULT 'Unknown',
description_iban VARCHAR(100) NOT NULL DEFAULT 'Unknown',
PRIMARY KEY (id_acc),
FOREIGN KEY (id_emp) REFERENCES cadry.employees (id_emp)
ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO cadry.employee_bank_accounts (id_emp, iban_emp, name_bank, description_iban) 
VALUES 
(1, 'UA253843240002541125425146231', 'ПАТ КБ ПриватБанк', 'зарплатний проект'),
(2, 'UA173843240002573254251425174', 'ПАТ Державний ощадний банк України', 'зарплатний проект'),
(2, 'UA343843240000000117772511254', 'ПАТ Державний ощадний банк України', 'соціальний проект'),
(3, 'UA343843240001100117172514642', 'ПАТ Райффайзен банк', 'зарплатний проект'),
(4, 'UA253843240002612354425175200', 'ПАТ КБ ПриватБанк', 'зарплатний проект'),
(5, 'UA253843240002512254251789547', 'ПАТ Державний ощадний банк України', 'зарплатний проект'),
(5, 'UA253843240002612212251711113', 'ПАТ Державний ощадний банк України', 'соціальний проект');

SELECT * FROM cadry.employee_bank_accounts;

SELECT iban_emp, name_bank, description_iban FROM cadry.employee_bank_accounts WHERE id_emp = (SELECT id_emp FROM cadry.employees WHERE last_name_emp Like 'Балев%');

SELECT  phone, info_of_phone FROM cadry.employee_phone WHERE id_emp = (SELECT id_emp FROM cadry.employees WHERE last_name_emp Like 'Балев%');



