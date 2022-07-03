create or replace package pack1 is
	procedure p1(p in programmer.pname%type);
	function f1(t in software.title%type) return software.pname%type;
end;
