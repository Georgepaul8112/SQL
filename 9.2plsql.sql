SQL> create or replace trigger stud_trig after insert on studs_file
2 for each row
3 declare
4 tot number:=0;
5 begin
6 tot:=:new.m1+:new.m2;
7 insert into stud_mark values(:new.sid,tot);
8 DBMS_OUTPUT.PUT_LINE('AFTER INSERT trigger activated:');
9
10 end;
11 /

Trigger created.
SQL> insert into studs_file values(5,'rani',40,45);
AFTER INSERT trigger activated:
SQL> select * from stud_mark;
