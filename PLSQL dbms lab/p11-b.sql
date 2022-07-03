create or replace package body pack2 as
	procedure p2(x in software.dev_d%type) as
		cursor s is select * from software where dev_d=x;
		t s%rowtype;
	begin
		open s;
		loop
			fetch s into t;
			exit when s%notfound;
			dbms_output.put_line(t.title);
		end loop;
		close s;
	end p2;
	
	function f2(y in studies.pname%type) return studies.splace%type as
		r studies.splace%type;
	begin
		select splace into r from studies where pname=y;
		return(r);
	end f2;
end;
