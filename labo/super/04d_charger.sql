-- 04d 
-- 04e
-- 
DECLARE
 i NUMBER;
 j NUMBER;
 k NUMBER;
 a NUMBER;
 b NUMBER;
 x NUMBER;
 
BEGIN
 --DELETE FROM Site;
 --COMMIT;
 --DELETE FROM Employe;
 --COMMIT;
 --FOR j IN 1..50 LOOP
 --  INSERT INTO Employe  VALUES (j, TO_CHAR(j) || 'Employe');
 --END LOOP;
 --COMMIT;
 x := 0;
 FOR i IN 1..100 LOOP
   SELECT MIN(pEmploye), 50 INTO a, b FROM Employe;
   FOR k IN a..b LOOP
     x := x + 1;
     INSERT INTO ServiceE (pServiceE, dServiceE, pEmploye) VALUES (x, TO_DATE('2015-06-12' , 'YYYY-MM-DD'), k);
   END LOOP;
 END LOOP;
 COMMIT;
END;
/
