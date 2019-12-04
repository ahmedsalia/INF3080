DECLARE
 i NUMBER;
 k NUMBER;
 a NUMBER;
 j NUMBER;
 x NUMBER;
 p NUMBER;
 o NUMBER;
 y NUMBER;
 z NUMBER;
 
BEGIN
 DELETE FROM ServiceD;
 COMMIT;
 x := 0;
 j:= 0 ;
 SELECT MIN(pServiceE), MAX(pServiceE) INTO a, b FROM pServiceE;
  SELECT MIN(pMachine), MAX(pMachine) INTO y, z FROM pMachine;
 FOR i IN 1..500 LOOP
   FOR k IN 1..10 LOOP
     x := x + 1;
     j := FLOOR(RAND()*(10-5+1)+5);
     p := FLOOR(RAND()*(b-a+1)+a);
     o := FLOOR(RAND()*(z-y+1)+z);
     INSERT INTO ServiceD (pServiceD, cDescription, nDuree, pMachine,pServiceE) VALUES (x, 'service', j,p,o);
   END LOOP;
 END LOOP;
 COMMIT;
END;
