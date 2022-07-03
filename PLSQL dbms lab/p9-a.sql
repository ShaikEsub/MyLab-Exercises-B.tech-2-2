create or replace function gettot(p in software.pname%type) return number as
	r number;
	cursor s is select * from software where pname=p;
	t s%rowtype;
begin
	r:=0;
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		r:=r+t.dcost;
	end loop;
	close s;
	return(r);
end;

		