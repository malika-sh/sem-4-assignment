declare
    empno number := &empno;
    ename varchar2(20);
    job varchar2(20);
    hiredate date;
    sal number;
    deptno number;
    dname varchar2(20);
begin
    select e.ename, e.job, e.hiredate, e.sal, e.deptno, d.dname
    into ename, job,hiredate, sal, deptno, dname
    from emp e, dept d
    where e.deptno=d.deptno and e.empno=empno;

    dbms_output.put_line('employee number:'|| empno);
    dbms_output.put_line('employee :name'|| ename);
    dbms_output.put_line('job :'|| job);
    dbms_output.put_line(' hiredate:'|| hiredate);
    dbms_output.put_line('salary :'|| sal);
    dbms_output.put_line('department :number'|| deptno);
    dbms_output.put_line('department :name'|| dname);
end;
/   