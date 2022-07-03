create or replace function getdb(p in programmer.pname%type) return date as
	d programmer.dob%type;
begin
	select dob into d from programmer where pname=p;
	return(d);
end;
