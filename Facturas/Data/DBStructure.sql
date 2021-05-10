/*=================================================================*/
  CREATE DATABASE "C:\Projects\Facturas\Data\Facturas.gdb"
             user "SYSDBA"
         password "masterkey"
         page_size=4096;
/*=================================================================*/
CREATE TABLE FacturasTbl
(
ID INTEGER NOT NULL,
Nomer VARCHAR(20),
Data  VARCHAR(15),
CompanyName VARCHAR(20),
PRIMARY KEY(ID)
);

CREATE TABLE MatTbl
(
ID INTEGER NOT NULL,
Name VARCHAR(12),
PRIMARY KEY(ID)
);

CREATE TABLE SalesTbl
(
ID INTEGER NOT NULL,
FID INTEGER NOT NULL,
MID INTEGER NOT NULL,
Quantity NUMERIC(14,2),
SPrice NUMERIC(14,2),
TotalPrice NUMERIC(14,2),
PRIMARY KEY(ID),
FOREIGN KEY(FID) REFERENCES FacturasTbl(ID),
FOREIGN KEY(MID) REFERENCES MatTbl(ID)
);

/*=================================================================*/

CREATE GENERATOR FacturasTblIDGen;
SET GENERATOR FacturasTblIDGen TO 0;

CREATE GENERATOR SalesTblIDGen;
SET GENERATOR SalesTblIDGen TO 0;

SET TERM ^ ;

CREATE PROCEDURE FACTURASTBL_IDSP
RETURNS(ID INTEGER)
AS
BEGIN
ID = GEN_ID(FacturasTblIDGen, 1);
END^

CREATE PROCEDURE SALESTBL_IDSP
RETURNS(ID INTEGER)
AS
BEGIN
ID = GEN_ID(SalesTblIDGen, 1);
END^

SET TERM ; ^

/*=================================================================*/

CREATE INDEX FacturasTblNomerNDX ON FacturasTbl(Nomer);
CREATE INDEX FacturasTblCompanyNDX ON FacturasTbl(CompanyName);

/*=================================================================*/
	/*
SELECT F.CompanyName, F.Nomer, F.Data
FROM FacturasTbl F, SalesTbl S, MatTbl M
WHERE M.NAME LIKE :PNAME AND M.ID = S.MID AND S.FID = F.ID
	*/
/*=================================================================*/
