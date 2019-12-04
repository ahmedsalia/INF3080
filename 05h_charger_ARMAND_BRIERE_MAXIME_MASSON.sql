DECLARE
i NUMBER;
j NUMBER;
v VARCHAR2(30);
n INTEGER;
a NUMBER;
n pls_integer;

BEGIN
    DELETE FROM Machine;
    COMMIT;
    DELETE FROM TypeMachine;
    COMMIT;
    DELETE FROM Modele;
    COMMIT;
    DELETE FROM Revision;
    COMMIT;
    DELETE FROM Site;
    COMMIT;
    SELECT MIN(pVille) INTO a FROM ville;
    INSERT INTO Site (pSite, cAdresse, pVille) VALUES (1, 'adresse a Armand', a);
    INSERT INTO Revision (pRevision, cRevision, cNote, dRevision) VALUES (1, 'Revision1', 'Grosse note', TO_DATE('1999-09-12', 'YYYY-MM-DD'));
    INSERT INTO Modele (pModele, cModele, cNote, dFinVie) VALUES (1, 'Le modele a Armand', 'Petite note' , TO_DATE('2001-01-01', 'YYYY-MM-DD'));
    INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption) VALUES (1, 'Le type moche de Alexis', 0);
    
    FOR j IN 1..50000 LOOP
        IF MOD(j,2) = 0 THEN
            v := 'Tres grosse machine';
        ELSE
            v := 'Petite machine';
        END IF;

        n := dbms_random.value(1000000000,2147483647);

        INSERT INTO Machine (pMachine, cMachine, bActif, cSerie, dInstallation, pModele, pRevision, pTypeMachine, pSite) 
        VALUES (j, v, 0, TO_CHAR(n), TO_DATE('1999-09-12', 'YYYY-MM-DD'), 1, 1, 1, 1);
    END LOOP;
    
    COMMIT;
END;
/
