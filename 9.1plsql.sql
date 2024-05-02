declare
2 cursor stud_cursor is select * from studs_file;
3 stud_rec stud_cursor%rowtype;
4 total number:=0;
5 begin
6 open stud_cursor;
7 loop
8 fetch stud_cursor into stud_rec;
9 exit when stud_cursor%notfound ;
10 total:=stud_rec.m1+stud_rec.m2;
11 dbms_output.put_line('Total marks of student '||stud_rec.name||' is: '||total);
12 end loop;
13 end;
14 /
Output
Total marks of student anu is: 85
Total marks of student binu is: 93
Total marks of student cini is: 75
Total marks of student dini is: 55
PL/SQL procedure successfully completed.
SQL> create table stud_mark(sid number,total number);