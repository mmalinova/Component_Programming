//---------------------------------------------------------------------------

#ifndef IBPhonebookH
#define IBPhonebookH
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
#include <IBTable.hpp>
#include <IBStoredProc.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TIBDatabase *DB;
        TIBTable *PersonsTable;
        TDataSource *PersonsTableDS;
        TDBGrid *DBGridPersons;
        TIBTable *TelephonesTable;
        TDataSource *TelephoneTableDS;
        TDBGrid *DBGridTelephone;
        TIntegerField *PersonsTablePERSON_ID;
        TIBStringField *PersonsTableFIRST_NAME;
        TIBStringField *PersonsTableLAST_NAME;
        TIBStringField *PersonsTableADDRESS;
        TIBStoredProc *IBPersonsSP;
        TIBStoredProc *IBTelephonesSP;
        TIBTable *TelephoneTypes;
        TIntegerField *TelephonesTableTELEPHONE_ID;
        TIntegerField *TelephonesTablePERSON_ID;
        TIntegerField *TelephonesTableTELTYPE_ID;
        TIBStringField *TelephonesTableTEL_NUMBER;
        TStringField *TelephonesTableTelephoneTypesLU;
        TIntegerField *TelephoneTypesTELTYPE_ID;
        TIBStringField *TelephoneTypesTELTYPE_NAME;
        TPanel *Panel1;
        TRadioGroup *RadioGroup;
        TEdit *SearchEdit;
        TBitBtn *SearchBitBtn;
        TIBTransaction *IBTransactionPersons;
        TLabel *Label1;
        TSplitter *Splitter1;
        TPanel *Panel2;
        TIBQuery *Query;
        TDataSource *QueryDS;
        TDBGrid *DBGrid1;
        TEdit *ParamEdit;
        TLabel *Label2;
        TButton *Button1;
        TSplitter *Splitter2;
        TButton *Button2;
        TIBQuery *AQuery;
        void __fastcall PersonsTableBeforePost(TDataSet *DataSet);
        void __fastcall TelephonesTableBeforePost(TDataSet *DataSet);
        void __fastcall DBGridPersonsExit(TObject *Sender);
        void __fastcall DBGridTelephoneExit(TObject *Sender);
        void __fastcall RadioGroupClick(TObject *Sender);
        void __fastcall SearchBitBtnClick(TObject *Sender);
        void __fastcall SearchEditChange(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
