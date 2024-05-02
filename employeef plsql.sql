Create table employee10(ssn number(20),fname varchar(20),JOB varchar(20),salary number(38));
Insert into employee10 values(101,'amrutha','biju',75000);
Insert into employee10 values(102,'anite','jose',75000);
Insert into employee10 values(103,'anna','maria',75000);
Insert into employee10 values(104,'bharathi','s',75000);
Declare
v_name employee10.fname%type;
v_JOB employee10.JOB%type;
v_sal employee10.salary%type;
Begin
select fname,JOB,salary
into v_name, v_JOB, v_sal
from employee10
where ssn =102;
dbms_output.put_line(v_name||' '||v_JOB||' '||v_sal);
End;
/