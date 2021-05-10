//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainUnit1.h"
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
void __fastcall TForm1::FacturasTblBeforePost(TDataSet *DataSet)
{
        if(FacturasTbl->State == dsInsert) {
                FacturasSP->Prepare();
                FacturasSP->ExecProc();
                FacturasTbl->FieldByName("ID")->AsInteger = FacturasSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SalesTblBeforePost(TDataSet *DataSet)
{
        if(SalesTbl->State == dsInsert) {
                SalesSP->Prepare();
                SalesSP->ExecProc();
                SalesTbl->FieldByName("ID")->AsInteger = SalesSP->ParamByName("ID")->AsInteger;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FacturasDBGExit(TObject *Sender)
{
        if((FacturasTbl->State == dsInsert) || (FacturasTbl->State == dsEdit)) {
                FacturasTbl->Post();
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SalesDBGExit(TObject *Sender)
{
        if((SalesTbl->State == dsInsert) || (SalesTbl->State == dsEdit)) {
                SalesTbl->Post();
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::RadioGroupClick(TObject *Sender)
{
        switch(RadioGroup->ItemIndex) {
                case 0: FacturasTbl->IndexName = "FACTURASTBLNOMERNDX";
                        break;
                case 1: FacturasTbl->IndexName = "FACTURASTBLCOMPANYNDX";
                        break;
		case 3: FacturasTbl->IndexName = "";
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
                case 0: FacturasTbl->Locate("NOMER", SearchEdit->Text, Opts);
                        break;
                case 1: FacturasTbl->Locate("COMPANYNAME", SearchEdit->Text, Opts);
                        break;
        }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::SQLBitBtnClick(TObject *Sender)
{
        Query->Close();
        Query->Prepare();
        Query->ParamByName("PNAME")->AsString = ParamEdit->Text;
        Query->Open();
}
//---------------------------------------------------------------------------
