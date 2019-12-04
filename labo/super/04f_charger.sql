DECLARE
i NUMBER;
j NUMBER;
v VARCHAR2(30);
n INTEGER;
pmod INTEGER;
pre INTEGER;
pty INTEGER;
psi INTEGER;
a NUMBER;
k NUMBER;
b NUMBER;
x NUMBER;

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
    INSERT INTO Revision (pRevision, cRevision, cNote, dRevision) VALUES (1, 'Revision1', 'Grosse note', TO_DATE('1999-09-12', 'YYYY-MM-DD'));

    FOR i IN 1..5 LOOP
        INSERT INTO typeMachine (pTypeMachine, cTypeMachine, bOption) VALUES (i, 'typeMachine' || i, MOD(i,2));
        INSERT INTO modele (pModele, cModele, dFinVie ) VALUES (i, 'modele' || i, SYSDATE + i);
    END LOOP;
    COMMIT;

    SELECT MIN(pVille), MAX(pVille) INTO a, b FROM ville;
    x := a;

    FOR i IN 1..15000 LOOP
        INSERT INTO Site (pSite, cAdresse, pVille) VALUES (i, i*22 || 'rue des Arbres', x );
        IF x = b THEN
            x := a;
        ELSE  
            x := (x+1);
        END IF;
    END LOOP;
    COMMIT;
    
    FOR j IN 1..50000 LOOP
        IF MOD(j,2) = 0 THEN
            v := 'Tres grosse machine';
        ELSE
            v := 'Petite machine';
        END IF;

        n := dbms_random.value(1000000000,2147483647);
        pmod := dbms_random.value(1, 5);
        pty  := dbms_random.value(1, 5);
        psi  := dbms_random.value(1, 15000);
        INSERT INTO Machine (pMachine, cMachine, bActif, cSerie, dInstallation, pModele, pRevision, pTypeMachine, pSite) 
        VALUES (j, v, 0, TO_CHAR(n), TO_DATE('1999-09-12', 'YYYY-MM-DD'), pmod, 1, pty, psi);
    END LOOP;
    
    COMMIT;
END;
/
