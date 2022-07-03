declare
	a programmer.pname%type:='&a';
	b software.title%type:='&b';
	r software.pname%type;
begin
	pack1.p1(a);
	r:=pack1.f1(b);
	dbms_output.put_line('Name is   '||r);
end;
