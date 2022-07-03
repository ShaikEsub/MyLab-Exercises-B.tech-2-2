declare
	cursor s is select * from programmer;
	t s%rowtype;
begin
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		dbms_output.put_line('Pname  '||t.pname||'  '||'Date of Birth   '||t.dob);
	end loop;
	close s;
end;
