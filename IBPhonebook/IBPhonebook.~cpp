//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "IBPhonebook.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::PersonsTableBeforePost(TDataSet *DataSet)
{
        if(PersonsTable->State == dsInsert) {
                IBPersonsSP->Prepare();
                IBPersonsSP->ExecProc();
                PersonsTable->FieldByName("PERSON_ID")->AsInteger = IBPersonsSP->ParamByName("PERSON_ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::TelephonesTableBeforePost(TDataSet *DataSet)
{
            if(TelephonesTable->State == dsInsert) {
                IBTelephonesSP->Prepare();
                IBTelephonesSP->ExecProc();
                TelephonesTable->FieldByName("TELEPHONE_ID")->AsInteger = IBTelephonesSP->ParamByName("TELEPHONE_ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DBGridPersonsExit(TObject *Sender)
{
        if((PersonsTable->State == dsInsert) || (PersonsTable->State == dsEdit)) {
                PersonsTable->Post();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DBGridTelephoneExit(TObject *Sender)
{
        if((TelephonesTable->State == dsInsert) || (TelephonesTable->State == dsEdit)) {
                TelephonesTable->Post();
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::RadioGroupClick(TObject *Sender)
{
        switch(RadioGroup->ItemIndex) {
                case 0: PersonsTable->IndexName = "PersonsTableNameNDX";
                        break;
                case 1: PersonsTable->IndexName = "PersonsTableFamNDX";
                        break;
                case 2: PersonsTable->IndexName = "PersonsTblAddNDX";
                        break;
                case 3: PersonsTable->IndexName = "";
                        break;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SearchBitBtnClick(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;

        switch(RadioGroup->ItemIndex) {
                case 0: PersonsTable->Locate("FIRST_NAME", SearchEdit->Text, Opts);
                        break;
                case 1: PersonsTable->Locate("LAST_NAME", SearchEdit->Text, Opts);
                        break;
                case 2: PersonsTable->Locate("ADDRESS", SearchEdit->Text, Opts);
                        break;
        }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::SearchEditChange(TObject *Sender)
{
        TLocateOptions Opts;
        Opts.Clear();
        Opts << loPartialKey;

        switch(RadioGroup->ItemIndex) {
                case 0: PersonsTable->Locate("FIRST_NAME", SearchEdit->Text, Opts);
                        break;
                case 1: PersonsTable->Locate("LAST_NAME", SearchEdit->Text, Opts);
                        break;
                case 2: PersonsTable->Locate("ADDRESS", SearchEdit->Text, Opts);
                        break;
        }        
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button1Click(TObject *Sender)
{
        Query->Close();
        Query->Prepare();
        Query->ParamByName("NAME")->AsString = ParamEdit->Text;
        Query->Open();
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
        AQuery->Close();
        AQuery->Prepare();
        AQuery->ParamByName("ID")->AsInteger = PersonsTable->FieldByName("PERSON_ID")->AsInteger;
        AQuery->ParamByName("ADDR")->AsString = ParamEdit->Text;
        AQuery->ExecSQL();
        PersonsTable->Close();
        PersonsTable->Open();
}
//---------------------------------------------------------------------------

