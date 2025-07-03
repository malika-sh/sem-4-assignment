-- Create a function to calculate reverse of a number. 
CREATE OR REPLACE FUNCTION reversenum(num NUMBER) RETURN NUMBER IS

rev_num number :=0;
temp number:= num;

begin 
    while temp> 0 loop
    rev_num := rev_num*10 + mod(temp,10);
    temp := TRUNC(temp/10);
    end loop;

        RETURN rev_num;
    end reversenum;
    /

    begin
        dbms_output.put_line('original num:123 reversed num:'||reversenum(123));
    end;
    /