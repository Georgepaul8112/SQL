SQL> create table stud_file(sid number, name varchar(20), m1 number, m2 number);
Table created.

SQL> insert into stud_file values(1,'anu',40,45);
1 row created.
SQL> insert into stud_file values(2,'binu',48,45);
1 row created.
SQL> insert into stud_file values(3,'cini',30,45);
1 row created.
SQL> insert into stud_file values(4,'dini',30,25);
1 row created.
1.SQL> declare
2 id constant number :=1;
3 sname studs_file.name%type;
4 mark1 studs_file.m1%type;
5 mark2 studs_file.m2%type;
6 total number:=0;
7 begin
8 select name,m1,m2 into sname,mark1,mark2 from studs_file where sid=id;
9 total:=mark1+mark2;
10 dbms_output.put_line('Total marks of student '||sname||' with id '||id||' is:
'||total);
11 end;
12 /