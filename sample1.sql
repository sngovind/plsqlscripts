-- available online in file 'sample1'
DECLARE
   x NUMBER := 100;
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
END;