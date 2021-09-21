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
    CRUpdateDenyDescription: TStringField;
    CRUpdateallocation: TStringField;
    CRUpdateDateApproved: TDateField;
    CRUpdateallowprint: TBooleanField;
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
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

MrdocumentnumBer : string[50]                  ;
MrStatus         : String[50]                  ;
MrDeny           : String[200]                 ;
MrAllocation     : String[100]                 ;
mrdate           : string[10] ;
allowprint       : string[100];
end;

Var CRRecord          : materials             ;
    CRFile            : File                  ;
    C                 : Integer               ;
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


While not eof(crfile) do
   begin
    BlockRead(CRFile,CRRecord,1);
    With CRRecord do
      begin

          crupdate.close;
          crupdate.ParamByName('RV').Text := crrecord.MrdocumentnumBer;
          crupdate.Open;

        if not crupdate.IsEmpty then
         begin
          crupdate.Edit;
          CRUpdatestatus.Text           := crrecord.MrStatus;
          CRUpdateDenyDescription.Text  := crrecord.MrDeny;
          CRUpdateallocation.Text       := crrecord.MrAllocation;
          CRUpdateDateApproved.text     := crrecord.mrdate;
          CRUpdateallowprint.Text       := crrecord.allowprint;


          if crrecord.MrStatus = 'DISAPPROVED' then
           begin
            myquery1.SQL.Clear;
            myquery1.SQL.Add('update requisition set allocation = null where rvnumber like ' + QuotedStr('%' + crrecord.MrdocumentnumBer + '%'));
            myquery1.Execute;
          end;
          crupdate.Post;
          nxmemo1.Lines.Add(crrecord.MrdocumentnumBer + ' Updated');
        end
      else
       begin
          nxmemo1.Lines.Add('No record for data ' + crrecord.MrdocumentnumBer);
       end;
    end;

end;
CloseFile(crFile);
CrUpdate.Close;
NxMemo1.Lines.Add('Upload done...');


 myquery1.SQL.clear;
 myquery1.sql.Add('update requisition set allocation = null where allocation = ''''');
 myquery1.Execute;
end;
procedure TInvReportsDown.NxButton2Click(Sender: TObject);
begin
  close;
  
end;

end.

