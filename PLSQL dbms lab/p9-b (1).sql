declare
	res number;
	p software.pname%type:='&p';
begin
	res:=gettot(p);
	dbms_output.put_line('Total development cost is   '||res);
end;
