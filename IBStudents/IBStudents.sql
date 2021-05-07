/*=================================================================*/
  CREATE DATABASE "localhost:D:\Project\IBStudents\Data\IBStudents.gdb"
             user "SYSDBA"
         password "masterkey"
         page_size=4096;
/*=================================================================*/
CREATE TABLE STUDENTS_TBL
(
ID INTEGER NOT NULL,
FAKNO VARCHAR(10),
NAME VARCHAR(12),
FAM  VARCHAR(15),
PRIMARY KEY(ID)
);

CREATE TABLE SUBJECTS_TBL
(
ID INTEGER NOT NULL,
NAME VARCHAR(33),
PRIMARY KEY(ID)
);

CREATE TABLE NOTES_TBL
(
ID INTEGER NOT NULL,
STID INTEGER,
SBID INTEGER,
NOTE INTEGER,
PRIMARY KEY(ID),
FOREIGN KEY(STID) REFERENCES STUDENTS_TBL(ID),
FOREIGN KEY(SBID) REFERENCES SUBJECTS_TBL(ID)
);

/*=================================================================*/

CREATE GENERATOR STUDENTSTBL_IDGEN;
SET GENERATOR STUDENTSTBL_IDGEN TO 0;

CREATE GENERATOR NOTESTBL_IDGEN;
SET GENERATOR NOTESTBL_IDGEN TO 0;


SET TERM ^ ;

CREATE PROCEDURE STUDENTSTBL_IDSP
RETURNS(ID INTEGER)
AS
BEGIN
ID = GEN_ID(STUDENTSTBL_IDGEN, 1);
END^

CREATE PROCEDURE NOTESTBL_IDSP
RETURNS(ID INTEGER)
AS
BEGIN
ID = GEN_ID(NOTESTBL_IDGEN, 1);
END^

SET TERM ; ^

/*=================================================================*/

CREATE INDEX PersonsTblFakNoNDX ON STUDENTS_TBL(FAKNO);
CREATE INDEX PersonsTblNameNDX  ON STUDENTS_TBL(NAME);
CREATE INDEX PersonsTblFamNDX   ON STUDENTS_TBL(FAM);

/*=================================================================*/
                  /*
SELECT SB.NAME, N.NOTE
FROM STUDENTS_TBL ST, NOTES_TBL N, SUBJECTS_TBL SB
WHERE ST.FAKNO = :PFAKNO AND ST.ID = N.STID AND N.SBID = SB.ID
                    */
/*=================================================================*/

