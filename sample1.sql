-- available online in file 'sample1'
DECLARE
   x NUMBER := 100;
   v_number NUMBER := 7;
BEGIN
   FOR i IN 1..10 LOOP
      IF MOD(i,2) = 0 THEN     -- i is even
         INSERT INTO temp VALUES (i, x, 'i is even number');
      ELSE
         INSERT INTO temp VALUES (i, x, 'i is odd number');
      END IF;
      x := x + 100;
   END LOOP;
   COMMIT;
    IF MOD(v_number, 2) = 0 THEN
        DBMS_OUTPUT.PUT_LINE(v_number || ' is an even number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_number || ' is an odd number.');
    END IF;
END;
