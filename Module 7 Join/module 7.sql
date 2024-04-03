select employees.first_name,departments.department_name
from employees,departments
where employees.department_id=departments.department_id;

-- with join syntex which is more prefferable 
select employees.first_name,departments.department_name
from employees join departments on employees.department_id=departments.department_id;

-- aro shortcut ,eta avoid korbo jodi table er nam change thake
select employees.first_name,departments.department_name
from employees join departments using (department_id);

-- example of using join query(easy and advanced)
select m.first_name, e.first_name
from employees as m
join employees as e
on e.employee_id=m.manager_id;
-- show some dept name where there is no employees

select departments.department_name
from departments
left join employees 
on departments.department_id=employees.department_id
where employees.department_id is null;

-- show employee first name,salary,his avarage salary which is  less than avarage 
select employees.first_name,employees.salary,
(select avg (salary)from employees where department_id=employees.department_id)-employees.salary
from employees
join departments on employees.department_id=departments.department_id;

-- show those department where their minimum salary is grether than 5000

select department_name,min(salary),avg(salary)
from employees
 join departments
on employees.department_id=departments.department_id
group by department_name
having min(salary)>8000;

