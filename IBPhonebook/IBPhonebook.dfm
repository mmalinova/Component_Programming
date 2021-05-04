object Form1: TForm1
  Left = 455
  Top = 148
  Width = 850
  Height = 814
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Phonebook'
  Color = clGray
  Constraints.MinHeight = 700
  Constraints.MinWidth = 850
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 0
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 0
    Top = 601
    Width = 832
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
  end
  object Splitter2: TSplitter
    Left = 0
    Top = 474
    Width = 832
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object DBGridPersons: TDBGrid
    Left = 0
    Top = 217
    Width = 832
    Height = 257
    Align = alClient
    Color = clGray
    DataSource = PersonsTableDS
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = DBGridPersonsExit
    Columns = <
      item
        Expanded = False
        FieldName = 'PERSON_ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FIRST_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'Name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LAST_NAME'
        Title.Alignment = taCenter
        Title.Caption = 'Last name'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADDRESS'
        Title.Alignment = taCenter
        Title.Caption = 'Address'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 334
        Visible = True
      end>
  end
  object DBGridTelephone: TDBGrid
    Left = 0
    Top = 477
    Width = 832
    Height = 124
    Align = alBottom
    Color = clGray
    DataSource = TelephoneTableDS
    FixedColor = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 0
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowFrame
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = DBGridTelephoneExit
    Columns = <
      item
        Expanded = False
        FieldName = 'TelephoneTypesLU'
        Title.Alignment = taCenter
        Title.Caption = 'Phone type'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TEL_NUMBER'
        Title.Alignment = taCenter
        Title.Caption = 'Phone number'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 832
    Height = 217
    Align = alTop
    Anchors = [akTop, akRight]
    Color = clBtnShadow
    TabOrder = 2
    DesignSize = (
      832
      217)
    object Label1: TLabel
      Left = 346
      Top = 136
      Width = 155
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Incremental search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RadioGroup: TRadioGroup
      Left = 80
      Top = 24
      Width = 249
      Height = 177
      Caption = 'Sort by'
      Color = clBtnShadow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 3
      Items.Strings = (
        'first name'
        'last name'
        'address'
        'input order')
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnClick = RadioGroupClick
    end
    object SearchEdit: TEdit
      Left = 335
      Top = 160
      Width = 359
      Height = 28
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = SearchEditChange
    end
    object SearchBitBtn: TBitBtn
      Left = 709
      Top = 160
      Width = 86
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowFrame
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = SearchBitBtnClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 607
    Width = 832
    Height = 160
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      832
      160)
    object Label2: TLabel
      Left = -1
      Top = 16
      Width = 231
      Height = 20
      Anchors = [akTop, akRight]
      Caption = 'Please, add name parameter'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 40
      Width = 875
      Height = 119
      Align = alCustom
      DataSource = QueryDS
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = 0
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FIRST_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 171
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LAST_NAME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Last name'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADDRESS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Address'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 396
          Visible = True
        end>
    end
    object ParamEdit: TEdit
      Left = 237
      Top = 12
      Width = 364
      Height = 28
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = SearchEditChange
    end
    object Button1: TButton
      Left = 615
      Top = 8
      Width = 81
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Execute'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 704
      Top = 8
      Width = 113
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Edit address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object DB: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:D:\IV_course\CP_Projects\IBPhonebook\IBPHONEBOOK.GDB'
    Params.Strings = (
      'user_name=SYSDBA')
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 32
  end
  object PersonsTable: TIBTable
    Database = DB
    Transaction = IBTransactionPersons
    BeforePost = PersonsTableBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PERSON_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FIRST_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'LAST_NAME'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ADDRESS'
        DataType = ftString
        Size = 80
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'PERSON_ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'PERSONSTABLENAMENDX'
        Fields = 'FIRST_NAME'
      end
      item
        Name = 'PERSONSTABLEFAMNDX'
        Fields = 'LAST_NAME'
      end
      item
        Name = 'PERSONSTBLADDNDX'
        Fields = 'ADDRESS'
      end>
    IndexName = 'RDB$PRIMARY1'
    StoreDefs = True
    TableName = 'PERSONS_TBL'
    Left = 24
    Top = 72
    object PersonsTablePERSON_ID: TIntegerField
      DisplayWidth = 11
      FieldName = 'PERSON_ID'
    end
    object PersonsTableFIRST_NAME: TIBStringField
      DisplayWidth = 20
      FieldName = 'FIRST_NAME'
    end
    object PersonsTableLAST_NAME: TIBStringField
      DisplayWidth = 20
      FieldName = 'LAST_NAME'
    end
    object PersonsTableADDRESS: TIBStringField
      DisplayWidth = 59
      FieldName = 'ADDRESS'
      Size = 80
    end
  end
  object PersonsTableDS: TDataSource
    DataSet = PersonsTable
    Left = 24
    Top = 104
  end
  object TelephonesTable: TIBTable
    Database = DB
    Transaction = IBTransactionPersons
    BeforePost = TelephonesTableBeforePost
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TELEPHONE_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PERSON_ID'
        DataType = ftInteger
      end
      item
        Name = 'TELTYPE_ID'
        DataType = ftInteger
      end
      item
        Name = 'TEL_NUMBER'
        DataType = ftString
        Size = 33
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'TELEPHONE_ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN4'
        Fields = 'PERSON_ID'
      end
      item
        Name = 'RDB$FOREIGN5'
        Fields = 'TELTYPE_ID'
      end>
    IndexFieldNames = 'PERSON_ID'
    MasterFields = 'PERSON_ID'
    MasterSource = PersonsTableDS
    StoreDefs = True
    TableName = 'TELEPHONES_TBL'
    Left = 24
    Top = 288
    object TelephonesTableTELEPHONE_ID: TIntegerField
      DisplayWidth = 15
      FieldName = 'TELEPHONE_ID'
      Required = True
    end
    object TelephonesTablePERSON_ID: TIntegerField
      DisplayWidth = 11
      FieldName = 'PERSON_ID'
    end
    object TelephonesTableTELTYPE_ID: TIntegerField
      DisplayWidth = 12
      FieldName = 'TELTYPE_ID'
    end
    object TelephonesTableTEL_NUMBER: TIBStringField
      DisplayWidth = 20
      FieldName = 'TEL_NUMBER'
      Size = 33
    end
    object TelephonesTableTelephoneTypesLU: TStringField
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'TelephoneTypesLU'
      LookupDataSet = TelephoneTypes
      LookupKeyFields = 'TELTYPE_ID'
      LookupResultField = 'TELTYPE_NAME'
      KeyFields = 'TELTYPE_ID'
      Lookup = True
    end
  end
  object TelephoneTableDS: TDataSource
    DataSet = TelephonesTable
    Left = 24
    Top = 320
  end
  object IBPersonsSP: TIBStoredProc
    Database = DB
    Transaction = IBTransactionPersons
    StoredProcName = 'PERSONS_TBL_IDSP'
    Left = 24
    Top = 144
  end
  object IBTelephonesSP: TIBStoredProc
    Database = DB
    Transaction = IBTransactionPersons
    StoredProcName = 'TELEPHONES_TBL_IDSP'
    Left = 24
    Top = 360
  end
  object TelephoneTypes: TIBTable
    Database = DB
    Transaction = IBTransactionPersons
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'TELTYPE_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TELTYPE_NAME'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'TELTYPE_ID'
        Options = [ixPrimary, ixUnique]
      end>
    MasterSource = TelephoneTableDS
    StoreDefs = True
    TableName = 'TELTYPES_TBL'
    Left = 24
    Top = 400
    object TelephoneTypesTELTYPE_ID: TIntegerField
      FieldName = 'TELTYPE_ID'
      Required = True
    end
    object TelephoneTypesTELTYPE_NAME: TIBStringField
      FieldName = 'TELTYPE_NAME'
      Size = 25
    end
  end
  object IBTransactionPersons: TIBTransaction
    Active = True
    DefaultDatabase = DB
    AutoStopAction = saNone
    Left = 56
    Top = 32
  end
  object Query: TIBQuery
    Database = DB
    Transaction = IBTransactionPersons
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      'P.FIRST_NAME, '
      'P.LAST_NAME, '
      'P.ADDRESS, '
      'T.TEL_NUMBER,'
      'Y .TELTYPE_NAME'
      
        'FROM PERSONS_TBL P JOIN TELEPHONES_TBL T ON T.PERSON_ID = P.PERS' +
        'ON_ID'
      'LEFT OUTER JOIN TELTYPES_TBL Y ON Y .TELTYPE_ID = T.TELTYPE_ID'
      'WHERE P.FIRST_NAME = :NAME')
    Left = 8
    Top = 672
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NAME'
        ParamType = ptUnknown
      end>
  end
  object QueryDS: TDataSource
    DataSet = Query
    Left = 8
    Top = 704
  end
  object AQuery: TIBQuery
    Database = DB
    Transaction = IBTransactionPersons
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'UPDATE PERSONS_TBL SET ADDRESS = :ADDR'
      'WHERE PERSON_ID = :ID')
    Left = 40
    Top = 696
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ADDR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
  end
end
