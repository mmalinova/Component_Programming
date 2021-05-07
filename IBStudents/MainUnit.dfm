object SQLBitBtn: TSQLBitBtn
  Left = 207
  Top = 203
  Width = 1305
  Height = 675
  Caption = 'SQLBitBtn'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label: TLabel
    Left = 368
    Top = 56
    Width = 140
    Height = 20
    Caption = 'Incremental search:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SQLLabel: TLabel
    Left = 736
    Top = 112
    Width = 226
    Height = 20
    Caption = 'Enter Faculty number to search:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object StudentsDBG: TDBGrid
    Left = 48
    Top = 144
    Width = 649
    Height = 217
    DataSource = StudentsDS
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = StudentsDBGExit
    Columns = <
      item
        Expanded = False
        FieldName = 'FAKNO'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NAME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FAM'
        Width = 200
        Visible = True
      end>
  end
  object NotesDBG: TDBGrid
    Left = 48
    Top = 392
    Width = 329
    Height = 161
    DataSource = NotesDS
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnExit = NotesDBGExit
    Columns = <
      item
        Expanded = False
        FieldName = 'SUBJECT_LU'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOTE'
        Width = 82
        Visible = True
      end>
  end
  object RadioGroup: TRadioGroup
    Left = 88
    Top = 8
    Width = 233
    Height = 121
    Caption = 'Sort by'
    ItemIndex = 0
    Items.Strings = (
      'Input number'
      'Faculty number'
      'First name'
      'Last name')
    TabOrder = 2
    OnClick = RadioGroupClick
  end
  object SearchEB: TEdit
    Left = 368
    Top = 80
    Width = 329
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = SearchEBChange
  end
  object QueryDBG: TDBGrid
    Left = 736
    Top = 144
    Width = 449
    Height = 177
    DataSource = QueryDS
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ParamEdit: TEdit
    Left = 968
    Top = 104
    Width = 150
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object BitBtn1: TBitBtn
    Left = 1128
    Top = 104
    Width = 85
    Height = 33
    Caption = 'Search'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object IBTS: TIBTransaction
    Active = True
    DefaultDatabase = IBDB
    AutoStopAction = saNone
    Left = 40
    Top = 8
  end
  object IBDB: TIBDatabase
    Connected = True
    DatabaseName = '127.0.0.1:D:\IV_course\CP_Projects\IBStudents\IBSTUDENTS.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTS
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 8
    Top = 8
  end
  object StudentsTbl: TIBTable
    Database = IBDB
    Transaction = IBTS
    BeforePost = StudentsTblBeforePost
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
        Name = 'FAKNO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NAME'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'FAM'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY1'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'PERSONSTBLFAKNONDX'
        Fields = 'FAKNO'
      end
      item
        Name = 'PERSONSTBLNAMENDX'
        Fields = 'NAME'
      end
      item
        Name = 'PERSONSTBLFAMNDX'
        Fields = 'FAM'
      end>
    StoreDefs = True
    TableName = 'STUDENTS_TBL'
    Left = 8
    Top = 128
  end
  object NotesTbl: TIBTable
    Database = IBDB
    Transaction = IBTS
    BeforePost = NotesTblBeforePost
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
        Name = 'STID'
        DataType = ftInteger
      end
      item
        Name = 'SBID'
        DataType = ftInteger
      end
      item
        Name = 'NOTE'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY3'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'RDB$FOREIGN4'
        Fields = 'STID'
      end
      item
        Name = 'RDB$FOREIGN5'
        Fields = 'SBID'
      end>
    IndexFieldNames = 'STID'
    MasterFields = 'ID'
    MasterSource = StudentsDS
    StoreDefs = True
    TableName = 'NOTES_TBL'
    Left = 8
    Top = 360
    object NotesTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object NotesTblSTID: TIntegerField
      FieldName = 'STID'
    end
    object NotesTblSBID: TIntegerField
      FieldName = 'SBID'
    end
    object NotesTblNOTE: TIntegerField
      FieldName = 'NOTE'
    end
    object NotesTblSUBJECT_LU: TStringField
      FieldKind = fkLookup
      FieldName = 'SUBJECT_LU'
      LookupDataSet = SubjectsTbl
      LookupKeyFields = 'ID'
      LookupResultField = 'NAME'
      KeyFields = 'SBID'
      Size = 35
      Lookup = True
    end
  end
  object StudentsDS: TDataSource
    DataSet = StudentsTbl
    Left = 8
    Top = 168
  end
  object NotesDS: TDataSource
    DataSet = NotesTbl
    Left = 8
    Top = 400
  end
  object StudentsSP: TIBStoredProc
    Database = IBDB
    Transaction = IBTS
    StoredProcName = 'STUDENTSTBL_IDSP'
    Left = 8
    Top = 208
    object StudentsSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'STUDENTSTBL_IDSP.ID'
    end
  end
  object NotesSP: TIBStoredProc
    Database = IBDB
    Transaction = IBTS
    StoredProcName = 'NOTESTBL_IDSP'
    Left = 8
    Top = 440
    object NotesSPID: TIntegerField
      FieldName = 'ID'
      Origin = 'NOTESTBL_IDSP.ID'
    end
  end
  object SubjectsTbl: TIBTable
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
        Size = 33
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'ID'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'SUBJECTS_TBL'
    Left = 8
    Top = 536
    object SubjectsTblID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object SubjectsTblNAME: TIBStringField
      FieldName = 'NAME'
      Size = 33
    end
  end
  object IBQuery: TIBQuery
    Database = IBDB
    Transaction = IBTS
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT SB.NAME, N.NOTE'
      'FROM STUDENTS_TBL ST, NOTES_TBL N, SUBJECTS_TBL SB'
      'WHERE ST.FAKNO = :PFAKNO AND ST.ID = N.STID AND N.SBID = SB.ID')
    Left = 704
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PFAKNO'
        ParamType = ptUnknown
      end>
  end
  object QueryDS: TDataSource
    DataSet = IBQuery
    Left = 704
    Top = 200
  end
end
