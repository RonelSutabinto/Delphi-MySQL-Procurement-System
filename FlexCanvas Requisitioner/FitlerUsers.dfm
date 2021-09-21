object FrmFilterUser: TFrmFilterUser
  Left = 414
  Top = 222
  BorderStyle = bsDialog
  Caption = 'Filter User'
  ClientHeight = 163
  ClientWidth = 288
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CRDBGrid1: TCRDBGrid1
    Left = 16
    Top = 8
    Width = 265
    Height = 145
    OptionsEx = [dgeEnableSort, dgeLocalFilter, dgeLocalSorting]
    Align = alCustom
    DataSource = dsFilterUser
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = CRDBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'username'
        Title.Alignment = taCenter
        Title.Caption = 'User Name'
        Width = 248
        Visible = True
      end>
  end
  object FilterUser: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'Select username,idusers from Users')
    Left = 16
    Top = 8
    object FilterUserusername: TStringField
      FieldName = 'username'
      Size = 30
    end
    object FilterUseridusers: TLargeintField
      FieldName = 'idusers'
    end
  end
  object dsFilterUser: TMyDataSource
    DataSet = FilterUser
    Left = 24
    Top = 64
  end
end
