# INF3080 édition Automne 2019
INF3080 Bases de données

## Objectifs
Introduire les concepts fondamentaux des bases de données relationnelles.

## Sommaire du contenu
Information, données et système de gestion de bases de données (SGBD). Présentation des principales architectures de bases de données.

Modèle entité-association. Modèle relationnel. Algèbre relationnelle et langage SQL. Contraintes d'intégrité et gâchette (trigger). Création, exploitation et administration d'une base de données. Schéma interne : indexage et hachage. Intégration d'une base de données dans une application. Sécurité. Transactions. Évaluation et optimisation des requêtes relationnelles.

### Plan de cours
+  1 : Introduction aux systèmes de gestion de bases de données (nom, type, rôle et environnement)
   - Neo4J, SQLite, SQL Server, Oracle (Oracle Database), PostgreSQL, Kyoto Cabinet
+  2 : Introduction au modèle conceptuel entité-association
   - notation hongroise, type de données
+  3 : Introduction au modèle relationnel
   - schéma, dépendance fonctionnelle, formes normales, normalisation vs dénormalisation
   - Lecture : Se familiariser avec les 12 règles de Codd
+  4 : Introduction à l'algèbre relationnelle
+  5 : Introduction à Oracle et SQL*plus dans un environnement Linux
   - connexion, commandes de base, scripts
   - Les objets système du SGBDR Oracle Database
   - La requête la plus simple : SELECT * FROM DUAL;
+  6 : Le langage SQL partie DDL (CREATE, DROP, ALTER) 
   - table, view, index, sequence, contrainte, intégrité
+  7 : Le langage SQL
   - partie DML (INSERT, DELETE, UPDATE)
   - partie TCL (COMMIT, ROLLBACK, ...)
+  8 : Le langage SQL et les requêtes avancées
   - filtre, jointure, groupement, sous-requête
+ mi-session (examen intra)
+  9 : Initiation au PL/SQL 
   - Création de fonctions, procédures, packages, gachettes
   - Le langage PL/SQL, sections et blocs, variables et affectations, gestion des erreurs
+ 10 : La programmation PL/SQL avancé
   - Les curseurs
   - Les boucles
+ 11 : Jointures modernes et gestion des accès aux objets
   - Les jointures mordernes (théorie des ensembles)
   - partie DCL (GRANT, REVOKE)
   - Les synonymes
+ 12 : Introduction à SQL*Net et les connecteurs
   - Connectivité à partir d'une application distante
   - Les applications 2-tiers vs 3-tiers
   - Import de fichiers CSV/TSV Oracle SQL*Loader (voir références)
+ 13 : Coût et optimisation de requêtes
   - Explain plan
   - Les indexes vs table scan
+ 14 : Introduction et théorie des entrepôts de données
   - Schéma en étoile, table maître et table de faits, modélisation EDW
+ 15 : Bonus

+ Bravo, fin de session.

### Modalités d'évaluation proposées 

#### Examens
 - Examen Intra (#1) : 30%, 26 octobre 2019 de 14:00 à 17:00
   + **PK-1350** [ AAAA @ LAMA ]
   + **PK-1630** [ LEYN @ ZZZZ ]
 - Examen Final (#2) : 30%, 14 décembre 2019 de 14:00 à 17:00
   + **PK-R310** [ AAAA @ LAMO ]
   + **PK-2205** [ LOUL @ ZZZZ ]

##### Directives aux examens
 + Avoir votre carte d'étudiant UQAM valide;
 + Une feuille (format lettre) recto verso de notes personnelles est permise;
 + Vous ne pouvez pas collaborer avec un partenaire;
 + Vous ne pouvez pas prendre les notes personnelles d'un voisin;
 +	Aucun appareil électronique n’est admis dans la salle d'examen;
 + Bien lire les questions;
 + Vous devez réfléchir avant de répondre;
 + Répondre dans les espaces prévus;
 + Vous avez trois (3) heures;
 + **Signez la feuille de présence avant votre départ.**

#### Ateliers (laboratoires) :
 + Il n'y a pas de séance de laboratoire la semaine suivant l'examen.

#### Travaux :
 + Travail pratique #1 : modélisation et construction 15% [clic ici](https://github.com/guyfrancoeur/INF3080_A2019_TP/blob/master/tp1.md)
 + Travail pratique #2 : construction, implémentation et optimisation 25% [clic ici](https://github.com/guyfrancoeur/INF3080_A2019_TP/blob/master/tp2.md)
 
##### Directives des travaux :
 + Remise électronique **privé** via GitHub.com

##### Points bonus :
 + Il est possible d'obtenir des points pour des contributions extraordinaires;
 + Les points bonus sont à mon entière discrétion.

### Références
 - [Politiques du département Informatique](https://info.uqam.ca/politiques/)
 - [researchGate, EF Codd](https://www.researchgate.net/scientific-contributions/70214812_E_F_Codd)
 - [Les douzes règles de Codd](https://computing.derby.ac.uk/c/codds-twelve-rules/)
 - [The Entity-Relationship Model-Toward a Unified View of Data, Peter Chen, 1976](http://www.inf.unibz.it/~nutt/IDBs1011/IDBPapers/chen-ER-TODS-76.pdf)
 - [A preliminary framework for entity relationship models, Peter Chen, 1983](http://bit.csc.lsu.edu/~chen/pdf/framework.pdf)
 - Oracle technet
   + [Oracle Database Doc 11g v11.2](https://docs.oracle.com/cd/E11882_01/nav/portal_4.htm)
   + [SQL*plus Quick Reference 11g v11.2](https://docs.oracle.com/cd/E11882_01/server.112/e16605/toc.htm#i772678)
 - [SQL Loader par Vanish Kapoor (2018)](https://www.foxinfotech.in/2018/07/using-sql-loader-in-oracle-to-import-csv-file.html)
 - [connexion JDBC](https://razorsql.com/docs/help_oracle.html)
 - [Architecture de Oracle Net services](https://docs.oracle.com/cd/B28359_01/network.111/b28316/architecture.htm#NETAG208)
 - Robert Godin, UQAM, Professeur
 
 ---
 
 Auteur Guy Francoeur :copyright: 2019
