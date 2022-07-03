BEGIN
    UPDATE emp_information SET emp_dept='Web Developer'
        WHERE emp_name='Saulin';

    IF SQL%FOUND THEN
        dbms_output.put_line('Updated - If Found');
    END IF;

    IF SQL%NOTFOUND THEN
dbms_output.put_line('NOT Updated - If NOT Found');
    END IF; 

    IF SQL%ROWCOUNT>0 THEN
        dbms_output.put_line(SQL%ROWCOUNT||' Rows Updated');
    ELSE
        dbms_output.put_line('NO Rows Updated Found');
    END;
/

