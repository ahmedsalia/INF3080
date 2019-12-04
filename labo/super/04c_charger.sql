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
 SELECT MIN(pServiceE), MAX(pServiceE) INTO a, b FROM ServiceE;
  SELECT MIN(pMachine), MAX(pMachine) INTO y, z FROM Machine;
 FOR i IN 1..500 LOOP
   FOR k IN 1..10 LOOP
     x := x + 1;
     j := DBMS_RANDOM.VALUE(10 , 52);
     p := DBMS_RANDOM.VALUE(a , b);
     o := DBMS_RANDOM.VALUE(y , z);
     INSERT INTO ServiceD (pServiceD, cDescription, nDuree, pMachine,pServiceE) VALUES (x, 'service', j,p,o);
   END LOOP;
 END LOOP;
 COMMIT;
   SELECT COUNT(*) FROM SERVICED;
END;
