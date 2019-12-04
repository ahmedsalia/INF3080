-- 04i_charger.sql
-- 04j_charger.sql
DECLARE
 i NUMBER;
 j NUMBER;
 k NUMBER;
 a NUMBER;
 b NUMBER;
 x NUMBER;
BEGIN
 DELETE FROM ville;
 COMMIT;
 DELETE FROM province;
 COMMIT;
 DELETE FROM pays;
 COMMIT;
 INSERT INTO pays (pPays, cPays) VALUES (1,'Canada');
 INSERT INTO province (pProvince, CProvince) VALUES (1, 'Quebec');
 FOR j IN 2..13 LOOP
   INSERT INTO province (pProvince, CProvince, pPAys) VALUES (j, TO_CHAR(j) || ' Province', 1);
 END LOOP;
 COMMIT;
 x := 0;
 FOR i IN 1..100 LOOP
   SELECT MIN(pProvince), MAX(pProvince) INTO a, b FROM province;
   FOR k IN a..b LOOP
     x := x + 1;
     INSERT INTO ville (pVille, pProvince, cVille) VALUES (x, k, TO_CHAR(x) || ' Ville');
   END LOOP;
 END LOOP;
 COMMIT;
END;
/
