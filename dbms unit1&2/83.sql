CREATE TABLE employee(
    empno NUMBER PRIMARY KEY,
    ename VARCHAR2(20), --importantly use varchar2 only
    sal NUMBER,
    managerNo NUMBER,
    dname VARCHAR2(20),
    grade VARCHAR2(20)
)

INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1001, 'Joey', 20000, 105, 'Entertainment', 'A');
INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1002, 'Monica', 25000, 101, 'Food', 'A');
INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1003, 'Rachael', 20000, 103, 'Fashion', 'B');
INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1004, 'Chandler', 20000, 105, 'Entertainment', 'A');
INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1005, 'Phoebe', 25000, 101, 'Sales', 'C');
INSERT INTO employee (empno, ename, sal, managerNo, dname, grade) VALUES (1006, 'Ross', 25000, 103, 'Fashion', 'A');

declare
    empnum number :=&empnum;
    expe number;
    sal number;
    bonus number;
begin
    select e.exp, e.sal into expe,sal
    from emp e
    where e.empno=empnum;
    if expe > 9 then
        bonus :=sal+(sal*0.25);
    elsif expe between 5 and 9 then
        bonus := sal*0.20;
    else
        bonus := sal;
        end if;
    insert into bonus VALUES(empno,bonus);
    commit;
end;
/
