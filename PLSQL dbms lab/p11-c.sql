declare
	a software.dev_d%type:='&a';
	b studies.pname%type:='&b';
	r studies.splace%type;
begin
	pack2.p2(a);
	r:=pack2.f2(b);
	dbms_output.put_line('Name is   '||r);
end;
