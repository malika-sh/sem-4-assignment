-- Write a program to accept a number and find the sum of the digits
declare 
a number :=&a;
b number :=&b;
res number;
begin
    res := a+b;
    dbms_output.put_line(a||'+'||b||'='||res);
end;
/