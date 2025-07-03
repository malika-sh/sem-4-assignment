-- 28. Write a program accept a string and check whether it is palindrome or not

declare
s varchar2(10) :='&s';
l varchar2(20);
temp varchar2(10);
begin
    for i in reverse 1..length(s) loop
    l:=substr(s,i,1);
    temp := temp||''||l;
    end loop;
    if temp=s then
    dbms_output.put_line(temp||''||'is plaindrome');
    else
    dbms_output.put_line(temp||''||'is not palindrome');
    end if;
end;
/