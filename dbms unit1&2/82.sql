-- 82. WAP to accept a empno and display empno,name,sal,exp,dname,grade and loc.

declare
    empno number := &empno;
    ename varchar2(20);
    sal number;
    exp number;
    dname varchar2(20);
    grade number;
    loc varchar2(20);
begin
    select 