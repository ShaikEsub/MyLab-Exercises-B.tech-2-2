declare
	cursor s is select * from radius;
	t s%rowtype;
begin
	open s;
	loop
		fetch s into t;
		exit when s%notfound;
		insert into circle values(t.radius,3.14*t.radius*t.radius,2*3.14*t.radius);
	end loop;
end;
