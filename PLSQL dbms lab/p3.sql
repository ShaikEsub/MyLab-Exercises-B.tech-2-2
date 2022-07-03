declare
	pn programmer.pname%type:='&pn';
	cursor s is select * from programmer where pname=pn;
	t  s%rowtype;
begin
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		dbms_output.put_line(t.pname);
	end loop;
	close s;
end;
/

	