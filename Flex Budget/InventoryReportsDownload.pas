unit InventoryReportsDownload;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, MemDS, DBAccess, MyAccess, NxCollection, StdCtrls, NxEdit;

type
  TInvReportsDown = class(TForm)
    NxMemo1: TNxMemo;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    CRUpdate: TMyQuery;
    CRCheck: TMyQuery;
    JournalUpdate: TMyQuery;
    GetAccount: TMyQuery;
    OpenDialog1: TOpenDialog;
    Issuance: TMyQuery;
    Returns: TMyQuery;
    adjustment: TMyQuery;
    Rcheck: TMyQuery;
    Icheck: TMyQuery;
    RTcheck: TMyQuery;
    Icheckidinvissuance: TLargeintField;
    Icheckidate: TDateField;
    Icheckiname: TStringField;
    Icheckiamount: TFloatField;
    IcheckiNumber: TStringField;
    RTcheckidreturns: TLargeintField;
    RTcheckrtdate: TDateField;
    RTcheckrtnumber: TStringField;
    RTcheckrtamount: TFloatField;
    RTcheckidUsers: TLargeintField;
    RTcheckreturnedby: TStringField;
    Issuanceidinvissuance: TLargeintField;
    Issuanceidate: TDateField;
    Issuanceiname: TStringField;
    Issuanceiamount: TFloatField;
    IssuanceiNumber: TStringField;
    Returnsidreturns: TLargeintField;
    Returnsrtdate: TDateField;
    Returnsrtnumber: TStringField;
    Returnsrtamount: TFloatField;
    ReturnsidUsers: TLargeintField;
    Returnsreturnedby: TStringField;
    adjustmentidAdjustment: TLargeintField;
    adjustmentaNumber: TStringField;
    adjustmentaDate: TDateField;
    adjustmentaUserID: TLargeintField;
    acheck: TMyQuery;
    acheckidAdjustment: TLargeintField;
    acheckaNumber: TStringField;
    acheckaDate: TDateField;
    acheckaUserID: TLargeintField;
    Icheckidescription: TStringField;
    RTcheckrtparticulars: TStringField;
    Issuanceidescription: TStringField;
    Returnsrtparticulars: TStringField;
    adjustmentRemarks: TStringField;
    acheckRemarks: TStringField;
    MyQuery1: TMyQuery;
    journalupdate2: TMyQuery;
    Getaccount2: TMyQuery;
    LargeintField1: TLargeintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    LargeintField2: TLargeintField;
    CRUpdateidrequisition: TLargeintField;
    CRUpdatervDate: TDateField;
    CRUpdatervPCode: TStringField;
    CRUpdatervName: TStringField;
    CRUpdatervNumber: TStringField;
    CRUpdateamount: TFloatField;
    CRUpdatestatus: TStringField;
    CRUpdaterequester: TStringField;
    CRUpdateuserid: TLargeintField;
    CRUpdatecheckboxstatus: TLargeintField;
    CRUpdatervdescription: TMemoField;
    CRUpdateacctgstatus: TStringField;
    CRUpdatecanvasser: TStringField;
    CRUpdateaddress: TStringField;
    GetAccountidrequisition: TLargeintField;
    GetAccountrvDate: TDateField;
    GetAccountrvPCode: TStringField;
    GetAccountrvName: TStringField;
    GetAccountrvNumber: TStringField;
    GetAccountamount: TFloatField;
    GetAccountstatus: TStringField;
    GetAccountrequester: TStringField;
    GetAccountuserid: TLargeintField;
    GetAccountcheckboxstatus: TLargeintField;
    GetAccountrvdescription: TMemoField;
    GetAccountacctgstatus: TStringField;
    GetAccountcanvasser: TStringField;
    GetAccountaddress: TStringField;
    Rcheck2: TMyQuery;
    LargeintField3: TLargeintField;
    DateField1: TDateField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField3: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    MemoField1: TMemoField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    Rcheckidrequisition: TLargeintField;
    RcheckrvDate: TDateField;
    RcheckrvPCode: TStringField;
    RcheckrvName: TStringField;
    RcheckrvNumber: TStringField;
    Rcheckamount: TFloatField;
    Rcheckstatus: TStringField;
    Rcheckrequester: TStringField;
    Rcheckuserid: TLargeintField;
    Rcheckcheckboxstatus: TLargeintField;
    Rcheckrvdescription: TMemoField;
    Rcheckacctgstatus: TStringField;
    Rcheckcanvasser: TStringField;
    Rcheckaddress: TStringField;
    Rcheckdenydescription: TStringField;
    procedure NxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvReportsDown: TInvReportsDown;

implementation

uses Data, ModTools, Math, datatransfer;

{$R *.dfm}

procedure TInvReportsDown.NxButton1Click(Sender: TObject);
type
materials = record
Mrdate           : TDate                       ;
Mrdescription    : String[50]                  ;
MrPCode          : String[50]                  ;
MrPName          : String[50]                  ;
MrStatus         : String[50]                  ;
MrRequester      : String[50]                  ;
MrCanvasser      : String[50]                  ;
Mrdocumentnumber : String[20]                  ;
MrUserID         : integer                     ;
Mramount         : Currency                    ;

Mrdescript       : Array[1..100] of string[20]    ;
Mrquantity       : Array[1..100] of integer    ;
Mrunit           : Array[1..100] of string[20]    ;
Mrdocnumber      : Array[1..100] of string[20]    ;
Mrcost           : Array[1..100] of Currency    ;
MrTamount        : Array[1..100] of Currency  ;


end;

Var CRRecord          : materials ;
    CRFile            : File        ;
    C                 : Integer     ;
begin
 NxMemo1.Lines.Clear;

 if not(OpenDialog1.Execute) then Exit;

 try
 AssignFile(CRFile,OpenDialog1.FileName);
 Reset(CRFile,SizeOf(materials));
 except
  on E: Exception do
    begin
      NxMemo1.Lines.Add(E.Message);
      exit;
    end;
 end;
CRUpdate.open;
 While not eof(crfile) do
   begin
    BlockRead(CRFile,CRRecord,1);
    With CRRecord do
      begin

      rcheck2.close;
      rcheck2.ParamByName('RV').text := crrecord.Mrdocumentnumber;
      rcheck2.Open;

      if not rcheck2.IsEmpty then
       begin
        rcheck2.Next;
       end
      else
       begin
        myquery1.SQL.Clear;
        myquery1.SQL.Add('delete from requisition where rvnumber = '+ QuotedStr(crrecord.Mrdocumentnumber));
        myquery1.Execute;

        myquery1.SQL.Clear;
        myquery1.SQL.Add('delete from requisitiondetail where docnumber = '+ QuotedStr(crrecord.Mrdocumentnumber));
        myquery1.Execute;

        crupdate.AppendRecord([]);
        CRUpdate.Edit;
        CRUpdatervDate.AsDateTime       := crrecord.Mrdate;
        CRUpdatervdescription.asstring  := crrecord.Mrdescription;
        CRUpdatervNumber.Text           := crrecord.Mrdocumentnumber;
        CRUpdateamount.AsCurrency       := crrecord.Mramount;
        CRUpdatervPCode.text            := crrecord.MrPcode;
        CRUpdatervName.text             := crrecord.MrPName;
        CRUpdatestatus.text             := crrecord.MrStatus;
        CRUpdaterequester.text          := crrecord.MrRequester;
        CRUpdatecanvasser.text          := crrecord.MrCanvasser;
        NxMemo1.Lines.Add(CRUpdatervNumber.Text+' added');
        CRUpdate.Post;


        For C := 1 to 100 do
         begin
          rcheck.Close;
          rcheck.ParamByName('RV').text := crrecord.Mrdocnumber[c];
          rcheck.Open;

          if not rcheck.IsEmpty then
           begin
            JournalUpdate.ParamByName('rdqty').AsInteger      := crrecord.mrquantity[c];
            JournalUpdate.ParamByName('rddescription').Text   := crrecord.Mrdescript[c];
            JournalUpdate.ParamByName('unit').text            := CRRecord.mrunit[c];
            JournalUpdate.ParamByName('rdcost').AsCurrency    := CRRecord.mrcost[c];
            JournalUpdate.ParamByName('rdamount').AsCurrency  := crrecord.MrTamount[c];
            JournalUpdate.ParamByName('docnumber').Text       := CRRecord.Mrdocnumber[c];
            JournalUpdate.Execute;
           end;
         end;
      end;
    end;
end;

CloseFile(crFile);
CrUpdate.Close;
NxMemo1.Lines.Add('Download done...');


end;
end.

