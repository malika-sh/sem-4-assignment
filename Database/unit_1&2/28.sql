declare
    s varchar(10) :='&s';
    l varchar(20);
    temp varchar(10);
    begin
        for i in reverse 1..length(s) loop
        l:= SUBSTR(s,i,1);
        temp := temp ||''||l;
        end loop;

        if temp=s THEN
            dbms_outut.put_line(temp ||''||'is palindrome');
        ELSE
            dbms_output.put_line(temp||''||'is not palindrome');
        END iF;
    END:
    /