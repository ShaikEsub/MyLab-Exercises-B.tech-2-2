declare
	x programmer.pname%type:='&x';
	r programmer.dob%type;
begin
	r:=getdb(x);
	dbms_output.put_line('Date of birth is   '||r);
end;
