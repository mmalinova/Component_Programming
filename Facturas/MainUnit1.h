//---------------------------------------------------------------------------

#ifndef MainUnit1H
#define MainUnit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBDatabase.hpp>
#include <IBStoredProc.hpp>
#include <IBTable.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TIBDatabase *IBDB;
        TIBTransaction *IBTS;
        TIBTable *FacturasTbl;
        TIBTable *SalesTbl;
        TDataSource *FacturasDS;
        TDataSource *SalesDS;
        TDBGrid *FacturasDBG;
        TDBGrid *SalesDBG;
        TIntegerField *FacturasTblID;
        TIBStringField *FacturasTblNOMER;
        TIBStringField *FacturasTblDATA;
        TIBStringField *FacturasTblCOMPANYNAME;
        TIntegerField *SalesTblID;
        TIntegerField *SalesTblFID;
        TIntegerField *SalesTblMID;
        TIBBCDField *SalesTblQUANTITY;
        TIBBCDField *SalesTblSPRICE;
        TIBBCDField *SalesTblTOTALPRICE;
        TIBStoredProc *FacturasSP;
        TIntegerField *FacturasSPID;
        TIBStoredProc *SalesSP;
        TIntegerField *SalesSPID;
        TIBTable *MaterialsTbl;
        TStringField *SalesTblMATERIAL_NAME;
        TRadioGroup *RadioGroup;
        TEdit *SearchEdit;
        TLabel *Label1;
        TIBQuery *Query;
        TDataSource *QueryDS;
        TDBGrid *QueryDBG;
        TEdit *ParamEdit;
        TLabel *Label2;
        TBitBtn *SQLBitBtn;
        TIntegerField *MaterialsTblID;
        TIBStringField *MaterialsTblNAME;
        TIBStringField *QueryCOMPANYNAME;
        TIBStringField *QueryNOMER;
        TIBStringField *QueryDATA;
        void __fastcall FacturasTblBeforePost(TDataSet *DataSet);
        void __fastcall SalesTblBeforePost(TDataSet *DataSet);
        void __fastcall FacturasDBGExit(TObject *Sender);
        void __fastcall SalesDBGExit(TObject *Sender);
        void __fastcall RadioGroupClick(TObject *Sender);
        void __fastcall SearchEditChange(TObject *Sender);
        void __fastcall SQLBitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
