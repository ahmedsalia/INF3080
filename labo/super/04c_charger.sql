DECLARE
 i NUMBER;
 k NUMBER;
 a NUMBER;
 x NUMBER;
 
BEGIN
 DELETE FROM ServiceD;
 COMMIT;

 END LOOP;
 COMMIT;
 x := 0;
 a:= 10;
 FOR i IN 1..500 LOOP
   FOR k IN 1..10 LOOP
     x := x + 1;
     a := a + 10;
     INSERT INTO ServiceD (pServiceD, cDescription, nDuree, pMachine,pServiceE) VALUES (x, 'service', a,k,k);
   END LOOP;
 END LOOP;
 COMMIT;
END;
