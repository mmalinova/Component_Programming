/*==========================================================================*/
CREATE DATABASE "localhost:D:\TU\SUBJECTS\CP\Project\IBTelBook\Data\IBTelBook.gdb"
         user "SYSDBA"
         password "masterkey"
         page_size=4096;
/*=========================================================================*/

/*-------------------------------------------------------------------------*/ 
 CREATE TABLE PERSONS_TBL
 (
  PERSON_ID  INTEGER NOT NULL,
  FIRST_NAME VARCHAR(20),
  LAST_NAME  VARCHAR(20),
  ADDRESS    VARCHAR(80),
  PRIMARY KEY(PERSON_ID)
 );
 
/*-------------------------------------------------------------------------*/ 
 CREATE TABLE TELTYPES_TBL
 (
  TELTYPE_ID   INTEGER NOT NULL,
  TELTYPE_NAME VARCHAR(25),
  PRIMARY KEY(TELTYPE_ID)
 );

/*-------------------------------------------------------------------------*/ 
 CREATE TABLE TELEPHONES_TBL
 (
  TELEPHONE_ID INTEGER NOT NULL,
  PERSON_ID    INTEGER,
  TELTYPE_ID   INTEGER,
  TEL_NUMBER   VARCHAR(33),
  PRIMARY KEY(TELEPHONE_ID),
  FOREIGN KEY(PERSON_ID)  REFERENCES PERSONS_TBL(PERSON_ID),
  FOREIGN KEY(TELTYPE_ID) REFERENCES TELTYPES_TBL(TELTYPE_ID)
 );
/*-------------------------------------------------------------------------*/ 
