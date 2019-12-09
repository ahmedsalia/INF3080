-- 04d Site
-- a completer avec des randoms sur employe et site
-- script a revoir
DECLARE
 i NUMBER;
 a NUMBER;
 b NUMBER;
 x NUMBER;
 z1 NUMBER;
 z2 NUMBER;
 p NUMBER;
 q NUMBER;
 
BEGIN
 DELETE FROM pServieE;
 x := 0;
 SELECT MIN(pEmploye), MAX(pEmploye) INTO a, b FROM Employe;
 SELECT MIN(pSite),MAX(pSite) INTO p, q FROM Site;
 FOR i IN 1..5000 LOOP
     x := x + 1;
     z1 := DBMS_RANDOM.VALUE(a,b);
     z2 := DBMS_RANDOM.VALUE(p,q)
     INSERT INTO ServiceE (pServiceE, dServiceE, pSite, pEmploye) VALUES (x, TRUNC(SYSDATE + DBMS_RANDOM.value(0,366), z2, z1);
   END LOOP;
 END LOOP;
 COMMIT;
END;
/
