create or replace package body pack1 as
	procedure p1(p in programmer.pname%type) as
		s programmer.salary%type;
	begin
		select salary into s from programmer where pname=p;
		dbms_output.put_line('Salary is   '||s);
	end p1;
	function f1(t in software.title%type) return software.pname%type as
		x software.pname%type;
	begin
		select pname into x from software where title=t;
		return(x);
	end f1;
end;
