DECLARE
   result CHAR(20) := 'second';
BEGIN
   IF ( result = 'distinction' ) THEN
      DBMS_OUTPUT.PUT_LINE('First Class with Distinction');   
   ELSIF ( result = 'first' ) THEN
      DBMS_OUTPUT.PUT_LINE('First Class');  
   ELSIF ( result = 'second' ) THEN
      DBMS_OUTPUT.PUT_LINE('Second Class');  
   ELSIF ( result = 'third' ) THEN
      DBMS_OUTPUT.PUT_LINE('Third Class');        
   ELSE
      DBMS_OUTPUT.PUT_LINE('Fail');
   END IF;
END;