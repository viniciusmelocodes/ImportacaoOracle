CREATE TABLESPACE DADOS DATAFILE 'C:\oraclexe\app\oracle\oradata\XE\DADOS.ORA' SIZE 10M REUSE 
    AUTOEXTEND 
    ON NEXT  5M  EXTENT MANAGEMENT LOCAL 
    SEGMENT SPACE MANAGEMENT  AUTO
/ 

CREATE TEMPORARY TABLESPACE "USER_TEMP" TEMPFILE 
    'C:\oraclexe\app\oracle\oradata\XE\USER_TEMP.ORA' SIZE 10M REUSE AUTOEXTEND
    ON NEXT  5M  EXTENT MANAGEMENT LOCAL 
    UNIFORM SIZE 1M    
/

CREATE USER "CONTROLE"  PROFILE "DEFAULT" 
    IDENTIFIED BY "manager" DEFAULT TABLESPACE "DADOS" 
    TEMPORARY TABLESPACE "USER_TEMP" 
/    

alter user "CONTROLE" quota unlimited on "DADOS";

GRANT CREATE PROCEDURE TO "CONTROLE";
GRANT CREATE PUBLIC SYNONYM TO "CONTROLE";
GRANT CREATE SEQUENCE TO "CONTROLE";
GRANT CREATE SNAPSHOT TO "CONTROLE";
GRANT CREATE SYNONYM TO "CONTROLE";
GRANT CREATE TABLE TO "CONTROLE";
GRANT CREATE TRIGGER TO "CONTROLE";
GRANT CREATE VIEW TO "CONTROLE";
GRANT "CONNECT" TO "CONTROLE";
GRANT SELECT ANY DICTIONARY to "CONTROLE";
GRANT CREATE TYPE TO "CONTROLE";
GRANT CREATE SESSION, imp_full_database to "CONTROLE";