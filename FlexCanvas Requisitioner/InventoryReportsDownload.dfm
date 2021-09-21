object InvReportsDown: TInvReportsDown
  Left = 241
  Top = 155
  Caption = 'Upload'
  ClientHeight = 357
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object NxMemo1: TNxMemo
    Left = 152
    Top = 12
    Width = 329
    Height = 336
    TabOrder = 0
  end
  object NxButton1: TNxButton
    Left = 9
    Top = 13
    Width = 133
    Caption = 'Start Upload'
    TabOrder = 1
    OnClick = NxButton1Click
  end
  object NxButton2: TNxButton
    Left = 9
    Top = 324
    Width = 133
    Caption = 'Close'
    TabOrder = 2
    OnClick = NxButton2Click
  end
  object CRUpdate: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from requisition where rvnumber = :RV')
    Left = 16
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RV'
      end>
    object CRUpdateidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object CRUpdatervDate: TDateField
      FieldName = 'rvDate'
    end
    object CRUpdatervPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object CRUpdatervName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object CRUpdatervNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object CRUpdateamount: TFloatField
      FieldName = 'amount'
    end
    object CRUpdatestatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object CRUpdaterequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object CRUpdateuserid: TLargeintField
      FieldName = 'userid'
    end
    object CRUpdatecheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object CRUpdatervdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object CRUpdateacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object CRUpdatecanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object CRUpdateaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
    object CRUpdateDenyDescription: TStringField
      FieldName = 'DenyDescription'
      Size = 200
    end
    object CRUpdateallocation: TStringField
      FieldName = 'allocation'
      Size = 100
    end
    object CRUpdateDateApproved: TDateField
      FieldName = 'DateApproved'
    end
    object CRUpdateallowprint: TBooleanField
      FieldName = 'allowprint'
    end
  end
  object CRCheck: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from invreceipts'
      'where rnumber = :rnumber')
    Left = 16
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rnumber'
      end>
  end
  object JournalUpdate: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'update requisition set rvnumber = :rvnumber,'
      'status = :status, '
      'denydescription = :Denydescription'
      'where rvnumber =:Rv')
    Left = 48
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rvnumber'
      end
      item
        DataType = ftUnknown
        Name = 'STATUS'
      end
      item
        DataType = ftUnknown
        Name = 'Denydescription'
      end
      item
        DataType = ftUnknown
        Name = 'Rv'
      end>
  end
  object GetAccount: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from requisition where rvnumber =:RV')
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RV'
      end>
    object GetAccountidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object GetAccountrvDate: TDateField
      FieldName = 'rvDate'
    end
    object GetAccountrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object GetAccountrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object GetAccountrvNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object GetAccountamount: TFloatField
      FieldName = 'amount'
    end
    object GetAccountstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object GetAccountrequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object GetAccountuserid: TLargeintField
      FieldName = 'userid'
    end
    object GetAccountcheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object GetAccountrvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object GetAccountacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object GetAccountcanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object GetAccountaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.crf'
    Filter = 'Canvass/Requisition Data File|*.crf'
    Left = 81
    Top = 96
  end
  object Issuance: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from invIssuance')
    Left = 16
    Top = 184
    object Issuanceidinvissuance: TLargeintField
      FieldName = 'idinvissuance'
    end
    object Issuanceidate: TDateField
      FieldName = 'idate'
    end
    object Issuanceiname: TStringField
      FieldName = 'iname'
      Size = 50
    end
    object Issuanceiamount: TFloatField
      FieldName = 'iamount'
    end
    object IssuanceiNumber: TStringField
      FieldName = 'iNumber'
      Size = 17
    end
    object Issuanceidescription: TStringField
      FieldName = 'idescription'
      Size = 200
    end
  end
  object Returns: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from invreturns')
    Left = 48
    Top = 184
    object Returnsidreturns: TLargeintField
      FieldName = 'idreturns'
    end
    object Returnsrtdate: TDateField
      FieldName = 'rtdate'
    end
    object Returnsrtnumber: TStringField
      FieldName = 'rtnumber'
      Size = 15
    end
    object Returnsrtamount: TFloatField
      FieldName = 'rtamount'
    end
    object ReturnsidUsers: TLargeintField
      FieldName = 'idUsers'
    end
    object Returnsreturnedby: TStringField
      FieldName = 'returnedby'
    end
    object Returnsrtparticulars: TStringField
      FieldName = 'rtparticulars'
      Size = 200
    end
  end
  object adjustment: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from invadjustment')
    Left = 80
    Top = 184
    object adjustmentidAdjustment: TLargeintField
      FieldName = 'idAdjustment'
    end
    object adjustmentaNumber: TStringField
      FieldName = 'aNumber'
      Size = 15
    end
    object adjustmentaDate: TDateField
      FieldName = 'aDate'
    end
    object adjustmentaUserID: TLargeintField
      FieldName = 'aUserID'
    end
    object adjustmentRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
  end
  object Rcheck: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from requisition where rvnumber = :RV')
    Left = 16
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RV'
      end>
    object Rcheckidrequisition: TLargeintField
      FieldName = 'idrequisition'
    end
    object RcheckrvDate: TDateField
      FieldName = 'rvDate'
    end
    object RcheckrvPCode: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object RcheckrvName: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object RcheckrvNumber: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object Rcheckamount: TFloatField
      FieldName = 'amount'
    end
    object Rcheckstatus: TStringField
      FieldName = 'status'
      Size = 30
    end
    object Rcheckrequester: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object Rcheckuserid: TLargeintField
      FieldName = 'userid'
    end
    object Rcheckcheckboxstatus: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object Rcheckrvdescription: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object Rcheckacctgstatus: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object Rcheckcanvasser: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object Rcheckaddress: TStringField
      FieldName = 'address'
      Size = 100
    end
  end
  object Icheck: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from InvIssuance where inumber = :RN')
    Left = 48
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RN'
      end>
    object Icheckidinvissuance: TLargeintField
      FieldName = 'idinvissuance'
    end
    object Icheckidate: TDateField
      FieldName = 'idate'
    end
    object Icheckiname: TStringField
      FieldName = 'iname'
      Size = 50
    end
    object Icheckiamount: TFloatField
      FieldName = 'iamount'
    end
    object IcheckiNumber: TStringField
      FieldName = 'iNumber'
      Size = 17
    end
    object Icheckidescription: TStringField
      FieldName = 'idescription'
      Size = 200
    end
  end
  object RTcheck: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from InvReturns where rtnumber = :RN')
    Left = 80
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RN'
      end>
    object RTcheckidreturns: TLargeintField
      FieldName = 'idreturns'
    end
    object RTcheckrtdate: TDateField
      FieldName = 'rtdate'
    end
    object RTcheckrtnumber: TStringField
      FieldName = 'rtnumber'
      Size = 15
    end
    object RTcheckrtamount: TFloatField
      FieldName = 'rtamount'
    end
    object RTcheckidUsers: TLargeintField
      FieldName = 'idUsers'
    end
    object RTcheckreturnedby: TStringField
      FieldName = 'returnedby'
    end
    object RTcheckrtparticulars: TStringField
      FieldName = 'rtparticulars'
      Size = 200
    end
  end
  object acheck: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from InvAdjustment where anumber = :RN')
    Left = 112
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RN'
      end>
    object acheckidAdjustment: TLargeintField
      FieldName = 'idAdjustment'
    end
    object acheckaNumber: TStringField
      FieldName = 'aNumber'
      Size = 15
    end
    object acheckaDate: TDateField
      FieldName = 'aDate'
    end
    object acheckaUserID: TLargeintField
      FieldName = 'aUserID'
    end
    object acheckRemarks: TStringField
      FieldName = 'Remarks'
      Size = 200
    end
  end
  object MyQuery1: TMyQuery
    Connection = AcctData.myconnection1
    Left = 16
    Top = 216
  end
  object journalupdate2: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'insert into journal'
      ' (accountcode,'
      '  accountname,'
      '  documentdate,'
      '  documenttype,'
      '  documentnumber,'
      '  debit,'
      '  credit)'
      'values'
      ' (:accountcode,'
      '  :accountname,'
      '  :documentdate,'
      '  :documenttype,'
      '  :documentnumber,'
      '  :debit,'
      '  :credit)')
    Left = 112
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
      end
      item
        DataType = ftUnknown
        Name = 'accountname'
      end
      item
        DataType = ftUnknown
        Name = 'documentdate'
      end
      item
        DataType = ftUnknown
        Name = 'documenttype'
      end
      item
        DataType = ftUnknown
        Name = 'documentnumber'
      end
      item
        DataType = ftUnknown
        Name = 'debit'
      end
      item
        DataType = ftUnknown
        Name = 'credit'
      end>
  end
  object Getaccount2: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from chart where accountcode = :accountcode')
    Left = 80
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'accountcode'
      end>
    object LargeintField1: TLargeintField
      FieldName = 'idchart'
    end
    object StringField1: TStringField
      FieldName = 'accountcode'
    end
    object StringField2: TStringField
      FieldName = 'accountname'
      Size = 70
    end
    object StringField3: TStringField
      FieldName = 'accounttype'
      Size = 10
    end
    object StringField4: TStringField
      FieldName = 'accountledgertype'
      Size = 5
    end
    object FloatField1: TFloatField
      FieldName = 'BalAsOf'
    end
    object FloatField2: TFloatField
      FieldName = 'BalPeriodCovered'
    end
    object LargeintField2: TLargeintField
      FieldName = 'Indent'
    end
  end
  object Rcheck2: TMyQuery
    Connection = AcctData.myconnection1
    SQL.Strings = (
      'select * from requisition where rvnumber like :RV')
    Left = 112
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'RV'
      end>
    object LargeintField3: TLargeintField
      FieldName = 'idrequisition'
    end
    object DateField1: TDateField
      FieldName = 'rvDate'
    end
    object StringField5: TStringField
      FieldName = 'rvPCode'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'rvName'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'rvNumber'
      Size = 15
    end
    object FloatField3: TFloatField
      FieldName = 'amount'
    end
    object StringField8: TStringField
      FieldName = 'status'
      Size = 30
    end
    object StringField9: TStringField
      FieldName = 'requester'
      Size = 45
    end
    object LargeintField4: TLargeintField
      FieldName = 'userid'
    end
    object LargeintField5: TLargeintField
      FieldName = 'checkboxstatus'
    end
    object MemoField1: TMemoField
      FieldName = 'rvdescription'
      BlobType = ftMemo
    end
    object StringField10: TStringField
      FieldName = 'acctgstatus'
      Size = 5
    end
    object StringField11: TStringField
      FieldName = 'canvasser'
      Size = 45
    end
    object StringField12: TStringField
      FieldName = 'address'
      Size = 100
    end
  end
end
