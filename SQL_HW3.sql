
--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--2. Вывести всех работников у которых ЗП меньше 2000
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id where monthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary from employees  
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on employee_salary.salary_id = salary.id where employee_name is null; 

--Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employee_name, monthly_salary from employees
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id where employee_name is null and monthly_salary < 2000;

--Найти всех работников кому не начислена ЗП
select employee_name, monthly_salary from employees
left join employee_salary on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id where monthly_salary is null;

--Вывести всех работников с названиями их должности
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id; 

--Вывести имена и должность только Java разработчиков
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Java%';

--Вывести имена и должность только Python разработчиков
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Python%';

--Вывести имена и должность всех QA инженеров
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%QA%';

--Вывести имена и должность ручных QA инженеровManual 
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Manual%';

--Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

--Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

--Вывести зарплаты Java разработчиков
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

--Вывести зарплаты Python разработчиков
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';

--Вывести имена и зарплаты Junior Python разработчиков
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python developer%';

--Вывести имена и зарплаты Middle JavaScript разработчиков
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript developer%';

--Вывести имена и зарплаты Senior Java разработчиков
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

--Вывести зарплаты Junior QA инженеров
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Manual QA engineer%';

--Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%';

--Вывести минимальную ЗП QA инженеров
select min(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--Вывести максимальную ЗП QA инженеров
select max(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--Вывести количество QA инженеров
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

--Вывести количество Middle специалистов.
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

--Вывести количество разработчиков
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

--Вывести фонд (сумму) зарплаты разработчиков
select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

--Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300 order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300 order by monthly_salary;

--Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000) order by monthly_salary;

