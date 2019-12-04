
DECLARE
s Number;
BEGIN
delete from Employe;
commit;
for s in 1..1500 LOOP 
     insert into Employe(pEmploye,cEmploye)values(s, ' Emp');
   END LOOP;
 COMMIT;
END;
/
