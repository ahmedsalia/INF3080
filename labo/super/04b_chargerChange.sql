Declare
a number;
b number;
Begin
Delete FROM Site Detaillant;
Commit;
FOR i IN 1..100 LOOP
   SELECT MIN(pVille), MAX(pVille) INTO a, b FROM Ville;
   FOR k IN a..b LOOP
     INSERT INTO Detaillant (pDetaillant, cDetaillant, pVille) VALUES (i,TO_CHAR(i) || ' Detaillant',k);
   END LOOP;
 END LOOP;
 COMMIT;
END;
/
