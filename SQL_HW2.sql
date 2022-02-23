-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

-- Наполнить таблицу employee 70 строками
insert into employees(employee_name) values 
	('William Sullivan'),
	('James Rivera'),
	('Donald Davis'),
	('Eddie Thompson'),
	('Daniel Anderson'),
	('Ralph Graham'),
	('Edward Joseph'),
	('Phillip Byrd'),
	('Douglas Mitchell'),
	('Jason Holt'),
	('Eddie Brown'),
	('Joseph Thomas'),
	('James Simmons'),
	('George Stanley'),
	('Michael Harris'),
	('James Barton'),
	('Mark Coleman'),
	('Jerry Walters'),
	('Ryan Nelson'),
	('Dale Fisher'),
	('Cecil Cook'),
	('James Anderson'),
	('Raymond Johnson'),
	('John Watkins'),
	('Stanley Gonzalez'),
	('Joshua Murphy'),
	('John Taylor'),
	('Bryan Moore'),
	('Jimmie Davis'),
	('Terry Torres'),
	('James Castro'),
	('Kenneth Schmidt'),
	('Tommy Johnson'),
	('Leroy Miller'),
	('Richard Johnson'),
	('Kenneth Davis'),
	('Louis Sandoval'),
	('Thomas Murphy'),
	('Jose Warren'),
	('Daniel Ramsey'),
	('Daniel Washington'),
	('Timothy Hill'),
	('Dustin Williams'),
	('Norman Roy'),
	('Roberto Johnson'),
	('Ian Jones'),
	('Tony Bryant'),
	('Bradley Smith'),
	('Robert Christensen'),
	('Chad Moore'),
	('Robert Berry'),
	('Antonio Thomas'),
	('John Newton'),
	('Gregory Riley'),
	('Dennis Barnes'),
	('Michael Miller'),
	('Christopher Hawkins'),
	('Kyle Martin'),
	('Matthew Sanchez'),
	('Richard Torres'),
	('George James'),
	('Charles Morales'),
	('Gary Norman'),
	('Charles Rivera'),
	('Dan Gonzales'),
	('David Thomas'),
	('William Weber'),
	('Ricardo Ward'),
	('Steven Ray'),
	('Robert Allen');

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--Наполнить таблицу salary 15 строками

insert into salary(monthly_salary) values 
	('1000'),
	('1100'),
	('1200'),
	('1300'),
	('1400'),
	('1500'),
	('1600'),
	('1700'),
	('1800'),
	('1900'),
	('2000'),
	('2100'),
	('2200'),
	('2300'),
	('2400'),
	('2500');

-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
); 

--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id) values
	(1, 3),
	(3, 6),
	(40, 9),
	(39, 12),
	(33, 9),
	(11, 4),
	(23, 14),
	(5, 3),
	(41, 7),
	(70, 9),
	(81, 9),
	(2, 14),
	(123, 3),
	(35, 12),
	(36, 9),
	(77, 8),
	(78, 9),
	(32, 9),
	(17, 4),
	(18, 9),
	(19, 10),
	(90, 9),
	(88, 3),
	(50, 14),
	(51, 5),
	(55, 9),
	(49, 1),
	(60, 11),
	(100, 1),
	(101, 6),
	(66, 7),
	(67, 1),
	(93, 2),
	(120, 11),
	(44, 9),
	(57, 4),
	(58, 5),
	(59, 13),
	(27, 2),
	(28, 1);
	
--Создать таблицу roles
--id. Serial  primary key,
--role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

--Поменять тип столба role_name с int на varchar(30)

alter table roles alter column role_name type varchar(30);

--Наполнить таблицу roles 20 строками
insert into roles(role_name) values 
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manage'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer');
		
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
	references employees(id),
foreign key (role_id)
	references roles(id)
); 

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id,role_id) values
	(2, 7),
	(40, 2),
	(1, 3),
	(3, 6),
	(5, 12),
	(7, 3),
	(9, 7),
	(11, 8),
	(21, 9),
	(12, 10),
	(13, 1),
	(16, 14),
	(23, 9),
	(22, 4),
	(18, 2),
	(44, 19),
	(35, 18),
	(55, 4),
	(26, 11),
	(29, 1),
	(34, 20),
	(39, 6),
	(10, 9),
	(41, 10),
	(42, 10),
	(51, 12),
	(17,1),
	(57, 2),
	(59, 8),
	(60, 4),
	(70, 9),
	(58, 6),
	(63, 7),
	(64, 15),
	(19, 12),
	(20, 18),
	(69, 5),
	(66, 5),
	(8, 3),
	(37, 9);
