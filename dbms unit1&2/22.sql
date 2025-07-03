-- 22.Write a program to accept the temp in Centigrade and convert it into Fahrenheit(c=F-32/1.8
declare

    cel float :=&cel;
    f float;
begin
    f :=(cel *1.8)+32;
    dbms_output.put_line(cel||'C is'||f||'F');
end;
/