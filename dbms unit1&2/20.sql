-- 20. Write a program to aceept a number and display it in the Octal format

declare
    num number :=&num;
    reminder number :=0;
    octalnum varchar2(100) :='';
begin
    while num>0 loop
        reminder := mod(num,8);
        octalnum := reminder ||octalnum;
        num :=trunc(num/10);
    end loop;

    dbms_output.put_line('the number'||num||'in octal is:'||octalnum);
end;
/