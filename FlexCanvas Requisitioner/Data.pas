
unit Data;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess;

type                                                                
  TAcctData = class(TDataModule)
    myconnection1: TMyConnection;
    Chart: TMyQuery;
    dsChart: TDataSource;
    Journal: TMyQuery;
    dsJournal: TDataSource;
    Users: TMyQuery;
    dsUsers: TDataSource;
    Journalidjournal: TLargeintField;
    Journalaccountcode: TStringField;
    Journaldocumentdate: TDateField;
    Journaldocumentnumber: TStringField;
    Journaldebit: TFloatField;
    Journalcredit: TFloatField;
    Journalbalance: TFloatField;
    UsersUserName: TStringField;
    UsersUserID: TStringField;
    UsersUserPic: TBlobField;
    UsersPosition: TStringField;
    UsersUserRestriction: TStringField;
    Chartaccountcode: TStringField;
    Chartaccountname: TStringField;
    Chartaccounttype: TStringField;
    ChartBalAsOf: TFloatField;
    ChartBalPeriodCovered: TFloatField;
    ChartIndent: TLargeintField;
    Journalaccountname: TStringField;
    Chartdisplaytitle: TStringField;
    Journaldocumenttype: TStringField;
    Chartaccountledgertype: TStringField;
    ScheduleMaster: TMyQuery;
    dsScheduleMaster: TDataSource;
    ScheduleDetail: TMyQuery;
    dsScheduleDetail: TDataSource;
    ScheduleMasteridScheduleMaster: TLargeintField;
    ScheduleMasterDescription: TStringField;
    ScheduleDetailidscheduledetail: TLargeintField;
    ScheduleDetailidschedulemaster: TFloatField;
    ScheduleDetailaccountcode: TStringField;
    ScheduleDetailaccountname: TStringField;
    requisition: TMyQuery;
    dsrequisition: TDataSource;
    Company: TMyQuery;
    Companyidcompany: TLargeintField;
    Companycompanyname: TStringField;
    Companyaddress: TStringField;
    Companylogo: TBlobField;
    Companyfilename: TStringField;
    Companycompanyacro: TStringField;
    dsCompany: TDataSource;
    ChartAllocAmount: TFloatField;
    ChartRBalance: TCurrencyField;
    dsPayee: TDataSource;
    RequisitionDetail: TMyQuery;
    dsRequistionDetail: TMyDataSource;
    RequisitionDetailidrequisitiondetail: TLargeintField;
    RequisitionDetailidrequisition: TFloatField;
    RequisitionDetailrdqty: TFloatField;
    RequisitionDetailrddescription: TStringField;
    RequisitionDetailrdcost: TFloatField;
    RequisitionDetailrdamount: TFloatField;
    UsersIdUsers: TLargeintField;
    RequisitionDetailrdunit: TStringField;
    Payee: TMyQuery;
    Payeeidpayee: TLargeintField;
    PayeePCode: TStringField;
    PayeeName: TStringField;
    Payeeschedgroup: TFloatField;
    CanvassData: TMyQuery;
    dsCanvassData: TDataSource;
    UsersArea: TStringField;
    UsersDepartment: TStringField;
    PO: TMyQuery;
    POidPO: TLargeintField;
    POPCode: TStringField;
    POName: TStringField;
    POAddress: TStringField;
    POPODate: TDateField;
    POPONumber: TStringField;
    DSPo: TMyDataSource;
    PODetail: TMyQuery;
    dsPODetail: TMyDataSource;
    Journalisgl: TBooleanField;
    Journalidrequisitiondetail: TFloatField;
    PODetailidPODetail: TLargeintField;
    PODetailidPO: TFloatField;
    PODetailidRequisitionDetail: TFloatField;
    PODetailQty: TFloatField;
    PODetailDesc: TStringField;
    PODetailCost: TFloatField;
    PODetailUnit: TStringField;
    PODetailIsAllocated: TStringField;
    PODetailAmount: TFloatField;
    CanvassDataidrequisition: TLargeintField;
    CanvassDatarvDate: TDateField;
    CanvassDatarvPCode: TStringField;
    CanvassDatarvName: TStringField;
    CanvassDatarvNumber: TStringField;
    CanvassDataamount: TFloatField;
    CanvassDatastatus: TStringField;
    CanvassDatarequester: TStringField;
    CanvassDatauserid: TLargeintField;
    CanvassDatacheckboxstatus: TLargeintField;
    CanvassDatarvdescription: TMemoField;
    CanvassDataacctgstatus: TStringField;
    CanvassDatacanvasser: TStringField;
    CanvassDataaddress: TStringField;
    CanvassDatadenydescription: TStringField;
    CanvassDataref: TStringField;
    CanvassDatarpo: TStringField;
    CanvassDataallocation: TStringField;
    CanvassDataastatus: TBooleanField;
    CanvassDatajoborder: TStringField;
    CanvassDataallowprint: TBooleanField;
    CanvassDatasupplier2: TStringField;
    CanvassDatasupplier3: TStringField;
    CanvassDatadateapproved: TDateField;
    CanvassDataPOdate: TDateField;
    CanvassDataPos: TStringField;
    PODetaildocnumber: TStringField;
    PayeeToPO: TMyQuery;
    poRvPurpose: TMyQuery;
    poRvPurposervdescription: TMemoField;
    POamount: TFloatField;
    POEmptyPO: TIntegerField;
    requiaition2: TMyQuery;
    LargeintField1: TLargeintField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    MemoField1: TMemoField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    BlobField1: TBlobField;
    StringField9: TStringField;
    LargeintField4: TLargeintField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    DateField2: TDateField;
    StringField21: TStringField;
    BooleanField1: TBooleanField;
    StringField22: TStringField;
    IntegerField1: TIntegerField;
    requisitionidrequisition: TLargeintField;
    requisitionrvDate: TDateField;
    requisitionrvPCode: TStringField;
    requisitionrvName: TStringField;
    requisitionrvNumber: TStringField;
    requisitionamount: TFloatField;
    requisitionstatus: TStringField;
    requisitionrequester: TStringField;
    requisitionuserid: TLargeintField;
    requisitioncheckboxstatus: TLargeintField;
    requisitionrvdescription: TMemoField;
    requisitionacctgstatus: TStringField;
    requisitioncanvasser: TStringField;
    requisitionaddress: TStringField;
    requisitiondenydescription: TStringField;
    requisitionref: TStringField;
    requisitionrpo: TStringField;
    requisitionallocation: TStringField;
    requisitionastatus: TBooleanField;
    requisitionjoborder: TStringField;
    requisitionallowprint: TBooleanField;
    requisitionsupplier2: TStringField;
    requisitionsupplier3: TStringField;
    requisitiondateapproved: TDateField;
    requisitionPOdate: TDateField;
    requisitionPos: TStringField;
    requisitionAllowprintBudget: TBooleanField;
    requisitionRecmmdedDeprtmnt: TStringField;
    requisitionReadyAlloct: TIntegerField;
    requisitionNoAllocation: TIntegerField;
    requisitionJOdate: TDateField;
    PODetailbrand: TStringField;
    UsersPassWord: TStringField;
    procedure ChartCalcFields(DataSet: TDataSet);
    procedure CanvassDatarvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AcctData: TAcctData;

implementation

uses StrUtils, MaskUtils, ModTools;

{$R *.dfm}


procedure TAcctData.ChartCalcFields(DataSet: TDataSet);
begin
  ChartRBalance.AsCurrency := ChartAllocAmount.AsCurrency - ChartBalPeriodCovered.AsCurrency;
end;

procedure TAcctData.CanvassDatarvdescriptionGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
Text := Copy(CanvassDatarvdescription.AsString, 1, 100);
end;

end.


