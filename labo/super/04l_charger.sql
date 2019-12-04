declare 
r number;
BEGIN
 DELETE FROM Revision;
 COMMIT;
   for r in 1..50 LOOP 
     insert into Revision(pRevision,cRevision,cNote,dRevision )values(r,'revision', TO_CHAR(r) || '_revi',sysdate);
   END LOOP;
 COMMIT;
END;
/
