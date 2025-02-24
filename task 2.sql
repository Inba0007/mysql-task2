use dbnews;
create table school(s_name varchar(25),reg_no int primary key,tamil int,english int, maths int,science int );
desc school;
insert into school() values("karthi",1,87,82,77,62);
insert into school() values("kumar",2,95,83,87,75),("rajesh",3,66,75,88,76);
select* from school;

delimiter //
create function update_stud_mark(s_name varchar(30),m1 int ,m2 int ,m3 int, m4 int)
returns int 
deterministic
begin
update school set tamil = m1, english = m2, maths = m3, science = m4 where s_name = stud_name;
return 1;
end //
delimiter ;
select update_stud_mark('inba',4,66,77,88,99);
select *from school;