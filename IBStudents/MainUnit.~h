//---------------------------------------------------------------------------

#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <IBDatabase.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <IBStoredProc.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TSQLBitBtn : public TForm
{
__published:	// IDE-managed Components
        TIBTransaction *IBTS;
        TIBDatabase *IBDB;
        TIBTable *StudentsTbl;
        TIBTable *NotesTbl;
        TDataSource *StudentsDS;
        TDataSource *NotesDS;
        TDBGrid *StudentsDBG;
        TDBGrid *NotesDBG;
        TIBStoredProc *StudentsSP;
        TIBStoredProc *NotesSP;
        TIntegerField *NotesSPID;
        TIntegerField *StudentsSPID;
        TIBTable *SubjectsTbl;
        TIntegerField *NotesTblID;
        TIntegerField *NotesTblSTID;
        TIntegerField *NotesTblSBID;
        TIntegerField *NotesTblNOTE;
        TIntegerField *SubjectsTblID;
        TIBStringField *SubjectsTblNAME;
        TStringField *NotesTblSUBJECT_LU;
        TRadioGroup *RadioGroup;
        TEdit *SearchEB;
        TLabel *Label;
        TIBQuery *IBQuery;
        TDataSource *QueryDS;
        TDBGrid *QueryDBG;
        TEdit *ParamEdit;
        TLabel *SQLLabel;
        TBitBtn *BitBtn1;
        void __fastcall StudentsTblBeforePost(TDataSet *DataSet);
        void __fastcall NotesTblBeforePost(TDataSet *DataSet);
        void __fastcall StudentsDBGExit(TObject *Sender);
        void __fastcall NotesDBGExit(TObject *Sender);
        void __fastcall RadioGroupClick(TObject *Sender);
        void __fastcall SearchEBChange(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TSQLBitBtn(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TSQLBitBtn *SQLBitBtn;
//---------------------------------------------------------------------------
#endif
