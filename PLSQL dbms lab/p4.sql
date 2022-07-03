declare
	t software.title%type:='&t';
	pn software.pname%type;
begin
	select pname into pn from software where title=t;
	dbms_output.put_line('Name  '||pn);
exception
	when no_data_found then
	dbms_output.put_line('No Data');
end;
