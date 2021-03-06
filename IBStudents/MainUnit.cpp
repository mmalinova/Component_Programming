//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TSQLBitBtn *SQLBitBtn;
//---------------------------------------------------------------------------
__fastcall TSQLBitBtn::TSQLBitBtn(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::StudentsTblBeforePost(TDataSet *DataSet)
{
        if(StudentsTbl->State == dsInsert) {
                StudentsSP->Prepare();
                StudentsSP->ExecProc();
                StudentsTbl->FieldByName("ID")->AsInteger = StudentsSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::NotesTblBeforePost(TDataSet *DataSet)
{
        if(NotesTbl->State == dsInsert) {
                NotesSP->Prepare();
                NotesSP->ExecProc();
                NotesTbl->FieldByName("ID")->AsInteger = NotesSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::StudentsDBGExit(TObject *Sender)
{
        if((StudentsTbl->State == dsInsert) || (StudentsTbl->State == dsEdit)) {
                StudentsTbl->Post();
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::NotesDBGExit(TObject *Sender)
{
        if((NotesTbl->State == dsInsert) || (NotesTbl->State == dsEdit)) {
                NotesTbl->Post();
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::RadioGroupClick(TObject *Sender)
{
        switch(RadioGroup->ItemIndex) {
                case 0: StudentsTbl->IndexName = "";
                        break;
                case 1: StudentsTbl->IndexName = "PERSONSTBLFAKNONDX";
                        break;
                case 2: StudentsTbl->IndexName = "PERSONSTBLNAMENDX";
                        break;
		case 3: StudentsTbl->IndexName = "PERSONSTBLFAMNDX";
                        break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::SearchEBChange(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;

        switch(RadioGroup->ItemIndex) {
                case 1: StudentsTbl->Locate("FAKNO", SearchEB->Text, Opts);
                        break;
                case 2: StudentsTbl->Locate("NAME", SearchEB->Text, Opts);
                        break;
                case 3: StudentsTbl->Locate("FAM", SearchEB->Text, Opts);
                        break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TSQLBitBtn::BitBtn1Click(TObject *Sender)
{
        IBQuery->Close();
        IBQuery->Prepare();
        IBQuery->ParamByName("PFAKNO")->AsString = ParamEdit->Text;
        IBQuery->Open();
}
//---------------------------------------------------------------------------

