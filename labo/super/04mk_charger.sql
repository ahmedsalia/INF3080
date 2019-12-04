DECLARE
    j NUMBER;
    BEGIN
        DELETE FROM TypeMachine;
        COMMIT;
        DELETE FROM Modele;
        COMMIT;
        FOR j IN 1..5 LOOP
            INSERT INTO Modele (pModele, cNote, dFinVie)
            VALUES (j, 'Modele no' || TO_CHAR(j), '2021-08-11');
            INSERT INTO TypeMachine (pTypeMachine, cTypeMachine, bOption)
            VALUES (j, 'Machine de type ' || TO_CHAR(j), 0);
        END LOOP;
        COMMIT;
END;
/
