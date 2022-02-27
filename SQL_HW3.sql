
--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id;

--2. ������� ���� ���������� � ������� �� ������ 2000
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on employee_salary.salary_id = salary.id where monthly_salary < 2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employees  
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on employee_salary.salary_id = salary.id where employee_name is null; 

--������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employee_name, monthly_salary from employees
right join employee_salary on employee_salary.employee_id = employees.id 
right join salary on employee_salary.salary_id = salary.id where employee_name is null and monthly_salary < 2000;

--����� ���� ���������� ���� �� ��������� ��
select employee_name, monthly_salary from employees
left join employee_salary on employee_salary.employee_id = employees.id 
left join salary on employee_salary.salary_id = salary.id where monthly_salary is null;

--������� ���� ���������� � ���������� �� ���������
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id; 

--������� ����� � ��������� ������ Java �������������
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Java%';

--������� ����� � ��������� ������ Python �������������
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Python%';

--������� ����� � ��������� ���� QA ���������
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%QA%';

--������� ����� � ��������� ������ QA ���������Manual 
select employee_name,role_name from employees
join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles.id = roles_employee.role_id where role_name like '%Manual%';

--������� ����� � �������� Junior ������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--������� ����� � �������� Middle ������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

--������� ����� � �������� Senior ������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

--������� �������� Java �������������
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java developer%';

--������� �������� Python �������������
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python developer%';

--������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python developer%';

--������� ����� � �������� Middle JavaScript �������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript developer%';

--������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior Java developer%';

--������� �������� Junior QA ���������
select monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Manual QA engineer%';

--������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

--������� ����� ������� JS �������������
select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript developer%';

--������� ����������� �� QA ���������
select min(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--������� ������������ �� QA ���������
select max(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

--������� ���������� QA ���������
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%QA engineer%';

--������� ���������� Middle ������������.
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%Middle%';

--������� ���������� �������������
select count(role_name) from employees
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
where role_name like '%developer%';

--������� ���� (�����) �������� �������������
select sum(monthly_salary) from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where role_name like '%developer%';

--������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
order by monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300 order by monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300 order by monthly_salary;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join roles_employee on roles_employee.employee_id = employees.id  
join roles on roles.id = roles_employee.role_id
join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000) order by monthly_salary;

