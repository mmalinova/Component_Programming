object Form1: TForm1
  Left = 241
  Top = 333
  Width = 1305
  Height = 675
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 360
    Top = 72
    Width = 160
    Height = 20
    Caption = 'Incremental search:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 760
    Top = 72
    Width = 310
    Height = 20
    Caption = 'Please, enter material name to search:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FacturasDBG: TDBGrid
    Left = 48
    Top = 144
    Width = 609
    Height = 233
    DataSource = FacturasDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = FacturasDBGExit
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPANYNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object SalesDBG: TDBGrid
    Left = 48
    Top = 400
    Width = 561
    Height = 185
    DataSource = SalesDS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = SalesDBGExit
    Columns = <
      item
        Expanded = False
        FieldName = 'MATERIAL_NAME'
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTITY'
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SPRICE'
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALPRICE'
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object RadioGroup: TRadioGroup
    Left = 56
    Top = 8
    Width = 233
    Height = 121
    Caption = 'Sort by'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Facture number'
      'Company name'
      'Input number')
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroupClick
  end
  object SearchEdit: TEdit
    Left = 360
    Top = 96
    Width = 289
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = SearchEditChange
  end
  object QueryDBG: TDBGrid
    Left = 688
    Top = 144
    Width = 585
    Height = 161
    DataSource = QueryDS
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMPANYNAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Color = clMedGray
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clBlack
        Title.Font.Height = -15
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end>
  end
  object ParamEdit: TEdit
    Left = 760
    Top = 96
    Width = 289
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object SQLBitBtn: TBitBtn
    Left = 1072
    Top = 96
    Width = 81
    Height = 33
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = SQLBitBtnClick
  end
  object IBDB: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:C:\Projects\Facturas\Data\FACTURAS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTS
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 16
  end
  object IBTS: TIBTransaction
    Active = True
    DefaultDatabase = IBDB
    AutoStopAction = saNone
    Left = 8
    Top = 48
  end
  object FacturasTbl: TIBTable
    Database = IBDB
    Transaction = IBTS
    BeforePost = FacturasTblBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOMER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'COMPANYNAME'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'FACTURASTBLNOMERNDX'
        Fields = 'NOMER'
      end
      item
        Name = 'FACTURASTBLCOMPANYNDX'
        Fields = 'COMPANYNAME'
      end>
    StoreDefs = True
    TableName = 'FACTURASTBL'
    Left = 8
    Top = 144
    object FacturasTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object FacturasTblNOMER: TIBStringField
      DisplayLabel = 'Facture number'
      FieldName = 'NOMER'
    end
    object FacturasTblDATA: TIBStringField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Size = 15
    end
    object FacturasTblCOMPANYNAME: TIBStringField
      DisplayLabel = 'Company name'
      FieldName = 'COMPANYNAME'
    end
  end
  object SalesTbl: TIBTable
    Database = IBDB
    Transaction = IBTS
    BeforePost = SalesTblBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'QUANTITY'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'SPRICE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOTALPRICE'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN4'
        Fields = 'FID'
      end
      item
        Name = 'RDB$FOREIGN5'
        Fields = 'MID'
      end>
    IndexFieldNames = 'FID'
    MasterFields = 'ID'
    MasterSource = FacturasDS
    StoreDefs = True
    TableName = 'SALESTBL'
    Left = 8
    Top = 400
    object SalesTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SalesTblFID: TIntegerField
      FieldName = 'FID'
      Required = True
    end
    object SalesTblMID: TIntegerField
      FieldName = 'MID'
      Required = True
    end
    object SalesTblQUANTITY: TIBBCDField
      DisplayLabel = 'Quantity'
      FieldName = 'QUANTITY'
      Precision = 18
      Size = 2
    end
    object SalesTblSPRICE: TIBBCDField
      DisplayLabel = 'Price'
      FieldName = 'SPRICE'
      Precision = 18
      Size = 2
    end
    object SalesTblTOTALPRICE: TIBBCDField
      DisplayLabel = 'Total price'
      FieldName = 'TOTALPRICE'
      Precision = 18
      Size = 2
    end
    object SalesTblMATERIAL_NAME: TStringField
      DisplayLabel = 'Material name'
      FieldKind = fkLookup
      FieldName = 'MATERIAL_NAME'
      LookupDataSet = MaterialsTbl
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'MID'
      Size = 15
      Lookup = True
    end
  end
  object FacturasDS: TDataSource
    DataSet = FacturasTbl
    Left = 8
    Top = 184
  end
  object SalesDS: TDataSource
    DataSet = SalesTbl
    Left = 8
    Top = 440
  end
  object FacturasSP: TIBStoredProc
    Database = IBDB
    Transaction = IBTS
    StoredProcName = 'FACTURASTBL_IDSP'
    Left = 8
    Top = 224
    object FacturasSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'FACTURASTBL_IDSP.ID'
    end
  end
  object SalesSP: TIBStoredProc
    Database = IBDB
    Transaction = IBTS
    StoredProcName = 'SALESTBL_IDSP'
    Left = 8
    Top = 480
    object SalesSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'SALESTBL_IDSP.ID'
    end
  end
  object MaterialsTbl: TIBTable
    Database = IBDB
    Transaction = IBTS
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'MATTBL'
    Left = 8
    Top = 568
    object MaterialsTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object MaterialsTblNAME: TIBStringField
      FieldName = 'NAME'
      Size = 12
    end
  end
  object Query: TIBQuery
    Database = IBDB
    Transaction = IBTS
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT F.CompanyName, F.Nomer, F.Data'
      'FROM FacturasTbl F, SalesTbl S, MatTbl M'
      'WHERE M.NAME LIKE :PNAME AND M.ID = S.MID AND S.FID = F.ID')
    Left = 688
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PNAME'
        ParamType = ptUnknown
      end>
    object QueryCOMPANYNAME: TIBStringField
      DisplayLabel = 'Company name'
      FieldName = 'COMPANYNAME'
      Origin = 'FACTURASTBL.COMPANYNAME'
    end
    object QueryNOMER: TIBStringField
      DisplayLabel = 'Facture number'
      FieldName = 'NOMER'
      Origin = 'FACTURASTBL.NOMER'
    end
    object QueryDATA: TIBStringField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'FACTURASTBL.DATA'
      Size = 15
    end
  end
  object QueryDS: TDataSource
    DataSet = Query
    Left = 688
    Top = 104
  end
end
