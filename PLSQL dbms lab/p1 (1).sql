declare
	pn programmer.pname%type:='&pn';
	db programmer.dob%type;
begin
	select dob into db from programmer where pname=pn;
	dbms_output.put_line('Date of birth is   '||db);
exception
	when no_data_found then
		dbms_output.put_line('No data');
	
end;
