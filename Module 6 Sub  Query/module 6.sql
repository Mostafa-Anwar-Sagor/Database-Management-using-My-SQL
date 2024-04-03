	
select *
from employees
where salary = (select max(salary)
from employees
where salary <(select max(salary)from employees));

select *
from employees as emp
where salary >(select salary from employees as mgr
where emp.manager_id=mgr.employee_id);

select *
from employees as emp
where job_id= (select job_id from employees as mgr
where emp.manager_id=mgr.employee_id);

with avgit as 
( select avg(salary) as sal1
from employees
where department_id=60),
 mkst as	
(select max(salary) as sal2
from employees
where department_id=20)
select *
from employees
where  salary> (select sal1 from avgit) and salary < (select sal2 from mkst);