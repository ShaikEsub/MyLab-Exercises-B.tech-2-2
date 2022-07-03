create or replace procedure getname(pn in programmer.pname%type) as
	cursor s is select * from programmer where pname=pn;
	t s%rowtype;
begin
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		dbms_output.put_line(t.dob);
		end loop;
	close s;
end;
