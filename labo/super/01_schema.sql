--Les noms des tables ont ete change pour ne pas creer de conflit.
--Vous avez ete tres bon j'ai decider de mettre un petit extra.
--*
--* FRAG 2019-11-28 changement sur l'environnement SQL*plus
--* FRAG 2019-12-03 changement sur la table detaillant
--==================================================================
DEFINE _EDITOR = nano
set linesize 32767
set pagesize 10000
set long 4000
set longchunksize 4000
set timing off
set heading off
set echo off
SET SERVEROUTPUT ON
SET EXITCOMMIT ON
SET SQLPROMPT "_USER ::: SQL> "

--CONNECT inf3080b/GgbVKKxG

DROP TABLE SiteDetaillant CASCADE CONSTRAINTS PURGE;

DROP TABLE Detaillant CASCADE CONSTRAINTS PURGE;

DROP TABLE ServiceD CASCADE CONSTRAINTS PURGE;

DROP TABLE ServiceE CASCADE CONSTRAINTS PURGE;

DROP TABLE Employe CASCADE CONSTRAINTS PURGE;

DROP TABLE Machine CASCADE CONSTRAINTS PURGE;

DROP TABLE Site CASCADE CONSTRAINTS PURGE;

DROP TABLE Ville CASCADE CONSTRAINTS PURGE;

DROP TABLE Province CASCADE CONSTRAINTS PURGE;

DROP TABLE Pays CASCADE CONSTRAINTS PURGE;

DROP TABLE TypeMachine CASCADE CONSTRAINTS PURGE;

DROP TABLE Revision CASCADE CONSTRAINTS PURGE;

DROP TABLE Modele CASCADE CONSTRAINTS PURGE;

CREATE TABLE Modele
(
	pModele              NUMBER NOT NULL ,
	cModele              VARCHAR2(50) NULL ,
	cNote                VARCHAR2(50) NULL ,
	dFinVie              DATE NULL ,
CONSTRAINT  XPKModele PRIMARY KEY (pModele)
);

CREATE TABLE Revision
(
	pRevision            NUMBER NOT NULL ,
	cRevision            VARCHAR2(50) NULL ,
	cNote                VARCHAR2(50) NULL ,
	dRevision            DATE NULL ,
CONSTRAINT  XPKRevision PRIMARY KEY (pRevision)
);

CREATE TABLE TypeMachine
(
	pTypeMachine         NUMBER NOT NULL ,
	cTypeMachine         VARCHAR2(50) NULL ,
	bOption              NUMBER NULL ,
CONSTRAINT  XPKTypeMachine PRIMARY KEY (pTypeMachine)
);

CREATE TABLE Pays
(
	pPays                NUMBER NOT NULL ,
	cPays                VARCHAR2(50) NULL ,
CONSTRAINT  XPKPays PRIMARY KEY (pPays)
);

CREATE TABLE Province
(
	pProvince            NUMBER NOT NULL ,
	cProvince            VARCHAR2(50) NULL ,
	pPays                NUMBER NULL ,
CONSTRAINT  XPKProvince PRIMARY KEY (pProvince),
CONSTRAINT R_2 FOREIGN KEY (pPays) REFERENCES Pays (pPays)
);

CREATE TABLE Ville
(
	pVille               NUMBER NOT NULL ,
	pProvince            NUMBER NULL ,
	cVille               VARCHAR2(50) NULL ,
CONSTRAINT  XPKVille PRIMARY KEY (pVille),
CONSTRAINT R_1 FOREIGN KEY (pProvince) REFERENCES Province (pProvince)
);

CREATE TABLE Site
(
	pSite                NUMBER NOT NULL ,
	cAdresse             VARCHAR2(50) NULL ,
	pVille               NUMBER NULL ,
CONSTRAINT  XPKSite PRIMARY KEY (pSite),
CONSTRAINT R_4 FOREIGN KEY (pVille) REFERENCES Ville (pVille)
);

CREATE TABLE Machine
(
	pMachine             NUMBER NOT NULL ,
	cMachine             VARCHAR2(50) NULL ,
	bActif               NUMBER NULL ,
	pModele              NUMBER NULL ,
	pRevision            NUMBER NULL ,
	cSerie               VARCHAR2(50) NULL ,
	pTypeMachine         NUMBER NULL ,
	pSite                NUMBER NULL ,
	dInstallation        DATE NULL ,
CONSTRAINT  XPKMachine PRIMARY KEY (pMachine),
CONSTRAINT R_5 FOREIGN KEY (pModele) REFERENCES Modele (pModele),
CONSTRAINT R_6 FOREIGN KEY (pRevision) REFERENCES Revision (pRevision),
CONSTRAINT R_14 FOREIGN KEY (pTypeMachine) REFERENCES TypeMachine (pTypeMachine),
CONSTRAINT R_15 FOREIGN KEY (pSite) REFERENCES Site (pSite)
);

CREATE TABLE Employe
(
	pEmploye             NUMBER NOT NULL ,
	cEmploye             VARCHAR(50) NULL ,
CONSTRAINT  XPKEmploye PRIMARY KEY (pEmploye)
);

CREATE TABLE ServiceE
(
	pServiceE            NUMBER NOT NULL ,
	dServiceE            DATE NULL ,
	pSite                NUMBER NULL ,
	pEmploye             NUMBER NULL ,
CONSTRAINT  XPKServiceE PRIMARY KEY (pServiceE),
CONSTRAINT R_13 FOREIGN KEY (pSite) REFERENCES Site (pSite),
CONSTRAINT R_17 FOREIGN KEY (pEmploye) REFERENCES Employe (pEmploye)
);

CREATE TABLE ServiceD
(
	pServiceD            NUMBER NOT NULL ,
	cDescription         VARCHAR2(50) NULL ,
	pMachine             NUMBER NULL ,
	pServiceE            NUMBER NULL ,
	nDuree               NUMBER NULL ,
CONSTRAINT  XPKServiceD PRIMARY KEY (pServiceD),
CONSTRAINT R_18 FOREIGN KEY (pMachine) REFERENCES Machine (pMachine),
CONSTRAINT R_19 FOREIGN KEY (pServiceE) REFERENCES ServiceE (pServiceE)
);

CREATE TABLE Detaillant
(
	pDetaillant          NUMBER NOT NULL ,
	cDetaillant          VARCHAR2(50) NULL ,
	pVille               NUMBER NULL ,
CONSTRAINT  XPKDetaillant PRIMARY KEY (pDetaillant),
CONSTRAINT R_20 FOREIGN KEY (pVille) REFERENCES Ville (pVille)
);

CREATE TABLE SiteDetaillant
(
	pSiteDetaillant      NUMBER NOT NULL ,
	pDetaillant          NUMBER NULL ,
	pSite                NUMBER NULL ,
CONSTRAINT  XPKSiteDetaillant PRIMARY KEY (pSiteDetaillant),
CONSTRAINT R_7 FOREIGN KEY (pDetaillant) REFERENCES Detaillant (pDetaillant),
CONSTRAINT R_8 FOREIGN KEY (pSite) REFERENCES Site (pSite)
);

-- Validation de notre travail.
SELECT table_name FROM user_tables WHERE UPPER(table_name) IN 
('SITEDETAILLANT'
,'DETAILLANT'
,'SERVICEE'
,'SERVICED'
,'EMPLOYE'
,'MACHINE'
,'TYPEMACHINE'
,'VILLE'
,'PROVINCE'
,'PAYS'
,'MODELE'
,'REVISION'
,'SITE'
);

SELECT count(*) as NOMBRE_TABLES FROM user_tables WHERE UPPER(table_name) IN 
('SITEDETAILLANT'
,'DETAILLANT'
,'SERVICEE'
,'SERVICED'
,'EMPLOYE'
,'MACHINE'
,'TYPEMACHINE'
,'VILLE'
,'PROVINCE'
,'PAYS'
,'MODELE'
,'REVISION'
,'SITE'
);

-- Fin.
