create or replace procedure getname(sp in studies.splace%type) as
	cursor s is select * from studies where splace=sp;
	t s%rowtype;
begin
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		dbms_output.put_line(t.pname);
		end loop;
	close s;
end;
