create table employee(
id serial primary key not null,
"name" text  not null,
department integer not null,
salary real not null
)
insert into employee (name, department, salary) values('Иван', 1, 10000);
insert into employee (name, department, salary) values('Иван', 2, 11000);
insert into employee (name, department, salary) values('Иван', 3, 12000);
insert into employee (name, department, salary) values('Иван', 1, 13000);
insert into employee (name, department, salary) values('Иван', 2, 14000);
select * from employee;

select department, min(salary), avg(salary) from employee group by department having count(*) > 1