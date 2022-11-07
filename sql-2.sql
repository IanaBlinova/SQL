1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

 select employee_name, monthly_salary 
from employees join salary
on employees.id = salary.id;

 2. Вывести всех работников у которых ЗП меньше 2000.

 select employee_name, monthly_salary
from employees join salary
on employees.id = salary.id
where monthly_salary < 2000;

 3. Вывести все зарплатные позиции, но работник по ним не назначен. 
(ЗП есть, но не понятно кто её получает.)

select monthly_salary 
from salary join employees
on salary.id = employees.id
where employee_name is null; 

 4. Вывести все зарплатные позиции  меньше 2000, 
но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select monthly_salary 
from salary join employees
on salary.id = employees.id
where monthly_salary is null and monthly_salary < 2000;

 5. Найти всех работников кому не начислена ЗП.

 select employee_name, monthly_salary
from employees left join salary
on employees.id = salary.id
where monthly_salary is null;       

 6. Вывести всех работников с названиями их должности.

 select employee_name, role_title
from employees join roles
on employees.id = roles.id;   

 7. Вывести имена и должность только Java разработчиков.

 select employee_name, role_title 
from employees join roles
on employees.id=roles.id
where role_title like '%Java%';

 8. Вывести имена и должность только Python разработчиков.
 
select employee_name, role_title 
from employees join roles
on employees.id=roles.id
where role_title like '%Python%';

 9. Вывести имена и должность всех QA инженеров.

 select employee_name, role_title 
from employees join roles
on employees.id=roles.id
where role_title like '%QA%';

 10. Вывести имена и должность ручных QA инженеров.

 select employee_name, role_title 
from employees join roles
on employees.id=roles.id
where role_title like '%Manu%';

 11. Вывести имена и должность автоматизаторов QA

 select employee_name, role_title 
from employees join roles
on employees.id=roles.id
where role_title like '%Auto%';

 12. Вывести имена и зарплаты Junior специалистов
 
select employee_name, monthly_salary, role_title
from employees 
join employee_salary 
on employees.id=employee_salary.employee_id
join salary
on employee_salary.salary_id = salary.id
join roles
on roles.id = salary.id
where role_title like '%Junior%';

 13. Вывести имена и зарплаты Middle специалистов
 
select employee_name, monthly_salary, role_title
from employees
join employee_salary
on employee_salary.employee_id = employees.id
join salary
on salary.id = employee_salary.salary_id
join roles
on roles.id = salary.id
where role_title like '%Middle%';

 14. Вывести имена и зарплаты Senior специалистов
 
 select employee_name, monthly_salary, role_title
 from employees
 join employee_salary
 on employee_salary.employee_id = employees.id 
 join salary
 on employee_salary.salary_id = salary.id 
 join roles
 on roles.id = salary.id 
 where role_title like '%Senior%';
 
 15. Вывести зарплаты Java разработчиков
 
 select monthly_salary, role_title 
 from salary 
 join roles 
 on roles.id = salary.id 
 where role_title like '%Java%';
 
 16. Вывести зарплаты Python разработчиков
 
 select monthly_salary, role_title 
 from salary 
 join roles 
 on roles.id = salary.id 
 where role_title like '%Python%';                  
 
 17. Вывести имена и зарплаты Junior Python разработчиков
 
 select employee_name, monthly_salary, role_title 
 from employees  
 join employee_salary 
 on employee_salary.employee_id = employees.id 
 join salary 
 on salary.id = employee_salary.salary_id 
 join roles 
 on roles.id = salary.id 
 where role_title like '%Junior_Python%'; 
 
 18. Вывести имена и зарплаты Middle JS разработчиков
 
  select employee_name, monthly_salary, role_title 
 from employees  
 join employee_salary 
 on employee_salary.employee_id = employees.id 
 join salary 
 on salary.id = employee_salary.salary_id 
 join roles 
 on roles.id = salary.id 
 where role_title like '%Middle_JS%'; 
 
 19. Вывести имена и зарплаты Senior Java разработчиков
 
 select employee_name, monthly_salary, role_title 
 from employees  
 join employee_salary 
 on employee_salary.employee_id = employees.id 
 join salary 
 on salary.id = employee_salary.salary_id 
 join roles 
 on roles.id = salary.id 
 where role_title like '%Senior_Java%'; 
 
 20. Вывести зарплаты Junior QA инженеров
 
select monthly_salary, role_title
from salary 
join roles 
on roles.id = salary.id 
where role_title like '%Junior_QA%';
 
 21. Вывести среднюю зарплату всех Junior специалистов
 
 select avg(monthly_salary) 
 from salary 
 join roles 
 on salary.id = roles.id 
 where role_title like '%Junior%';
 
 22. Вывести сумму зарплат JS разработчиков
 
 select sum(monthly_salary) 
 from salary 
 join roles 
 on roles.id = salary.id 
 where role_title like '%JS%';
 
 23. Вывести минимальную ЗП QA инженеров
 
 select min(monthly_salary)
 from salary 
 join roles 
 on roles.id = salary.id 
 where role_title like '%QA%';
 
 24. Вывести максимальную ЗП QA инженеров
 
 select max(monthly_salary) 
 from salary 
 join roles 
 on roles.id = salary.id 
 where role_title like '%QA%';
 
 25. Вывести количество QA инженеров
 
 select count(role_title)
from roles join roles_employee
on roles.id = roles_employee.role_id
where role_title like '%QA%';

 26. Вывести количество Middle специалистов.
 
  select count(role_title)
from roles join roles_employee
on roles.id = roles_employee.role_id
where role_title like '%Middle%';
 
 27. Вывести количество разработчиков.

 select sum(roles.id) 
from roles
where role_title like '%Developer%';            

 28. Вывести фонд (сумму) зарплаты разработчиков.
 
select sum(monthly_salary) from salary;

 29. Вывести имена, должности и ЗП всех специалистов по возрастанию.
 
select employee_name, role_title, monthly_salary
from employees 
join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id 
join roles
on roles.id = salary.id
order by monthly_salary;
                       
select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from roles_employee;                      
 
 30. Вывести имена, должности и ЗП всех специалистов 
по возрастанию у специалистов у которых ЗП от 1700 до 2300

select employee_name, role_title, monthly_salary
from employees 
join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id 
join roles
on roles.id = salary.id
where monthly_salary between 1700 and 2300
order by monthly_salary;

 31. Вывести имена, должности и ЗП всех специалистов 
по возрастанию у специалистов у которых ЗП меньше 2300

select employee_name, role_title, monthly_salary
from employees 
join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id 
join roles
on roles.id = salary.id
where monthly_salary < 2300
order by monthly_salary;

 32. Вывести имена, должности и ЗП всех специалистов 
по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

select employee_name, role_title, monthly_salary
from employees 
join employee_salary
on employees.id = employee_salary.employee_id 
join salary 
on salary.id = employee_salary.salary_id 
join roles
on roles.id = salary.id
where monthly_salary IN (1100, 1500, 2000)
order by monthly_salary;

