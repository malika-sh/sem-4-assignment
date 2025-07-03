declare
    empno number := &empno;
    dname varchar2(20);
begin
    select d.dname into dname
    from emp e, dept d
    where e.deptno=d.deptno and e.empno=empno;

    if dname='accounting' then
        update emp set deptno=20 where empno=empno;
    elsif dname='research' then
        update emp set deptno=30 where empno=empno;
    elsif dname='operations' then
        update emp set deptno=40 where empno=empno;
    else
        update emp set deptno=10 where empno=empno;
    end if;
    commit;
end;
/