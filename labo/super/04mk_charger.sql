DECLARE
    j NUMBER;
    d DATE;
    BEGIN
        DELETE FROM TypeMachine;
        COMMIT;
        DELETE FROM Modele;
        COMMIT;
        FOR j IN 1..5 LOOP
            IF MOD(j, 2) THEN 
              d := systdate + 1000;
            ELSE
              d := NULL;
            END IF;
            INSERT INTO Modele (pModele, cNote, dFinVie)
            VALUES (j, 'Modele no' || TO_CHAR(j), d);
        END LOOP;
        COMMIT;
        INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
        VALUES (1, 'terminal' || TO_CHAR(j), 0);
        INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
        VALUES (2, 'terminal' || TO_CHAR(j), 1);
        INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
        VALUES (3, 'terminal' || TO_CHAR(j), 1);
        INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
        VALUES (4, 'terminal' || TO_CHAR(j), 1);
        INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
        VALUES (5, 'terminal' || TO_CHAR(j), 1);
        COMMIT;
END;
/
