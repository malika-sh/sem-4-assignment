--  Write a program to aceept a number and print it in binary format
declare
num number := &num;
reminder number :=0;
binarynum varchar2(100) :='';

begin
    while num>0 loop
        reminder := mod(num,2);
        binarynum := reminder || binarynum;
        num := trunc(num/2);
    END LOOP;

    dbms_output.put_line('the number'||num||'in binary is:'||binarynum);
END;
/