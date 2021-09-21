unit FlexMenu;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Menus,
  StdCtrls,
  ExtCtrls,
  DBCtrls,
  NxToolBox,
  NxCollection,
  NxPageControl,
  DsFancyButton,
  Mask,
  NxFocus,
  NxEdit,
  ExtDlgs,
  DB,
  MemDS,
  DBAccess,
  MyAccess,
  NxColumns,
  NxDBColumns,
  NxScrollControl,
  ImgList,
  QuickRpt,
  QRCtrls,
  ComCtrls,
  NxCustomGridControl,
  NxCustomGrid,
  NxDBGrid,
  jpeg,
  Grids,
  DBGrids,
  CRGrid, CRDBGrid1, AdvDateTimePicker, AdvDBDateTimePicker, NxColumnClasses,
  NxGrid, PDJSillyTools, Buttons, PDJSillyLabel, frxClass, frxDBSet, pngimage,
  AdvSmoothLabel;

  Procedure AddItemRqt();
  procedure RequisitionPrvwRpt();
  procedure RequestRefresh();
  procedure CanvasSlctPayee();

type

  TFlexAccountMainMenuForm = class(TForm)
    Timer1: TTimer;
    MyNoteBook: TNxNotebook;
    TabHome: TNxTabSheet;
    TabCompany: TNxTabSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    TabUsers: TNxTabSheet;
    MyUsers: TMyQuery;
    MyUsersUserName: TStringField;
    MyUsersUserID: TStringField;
    MyUsersUserPic: TBlobField;
    MyUsersPosition: TStringField;
    MyUsersUserRestriction: TStringField;
    MyUsersIdUsers: TLargeintField;
    dsMyUsers: TMyDataSource;
    ImageList1: TImageList;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Image2: TImage;
    DateStr: TNxLabel;
    NxLabel2: TNxLabel;
    DBImage1: TDBImage;
    ChartLedger: TMyQuery;
    dsChartLedger: TMyDataSource;
    ChartLedgeridjournal: TLargeintField;
    ChartLedgeraccountcode: TStringField;
    ChartLedgeraccountname: TStringField;
    ChartLedgerdocumentdate: TDateField;
    ChartLedgerdocumenttype: TStringField;
    ChartLedgerdocumentnumber: TStringField;
    ChartLedgerdebit: TFloatField;
    ChartLedgercredit: TFloatField;
    ChartLedgerbalance: TFloatField;
    Panel1: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    QuickRep1: TQuickRep;
    QRBand35: TQRBand;
    QRDBText123: TQRDBText;
    QRDBText124: TQRDBText;
    QRDBText125: TQRDBText;
    QRDBText126: TQRDBText;
    QRBand36: TQRBand;
    QRDBImage12: TQRDBImage;
    QRDBText128: TQRDBText;
    QRDBText129: TQRDBText;
    QRDBText130: TQRDBText;
    QRLabel105: TQRLabel;
    QRBand37: TQRBand;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel111: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    ComputeChartBalances: TMyQuery;
    TabSheet2: TTabSheet;
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRBand3: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    LedgerEntry: TMyQuery;
    LedgerEntryidjournal: TLargeintField;
    LedgerEntryaccountcode: TStringField;
    LedgerEntryaccountname: TStringField;
    LedgerEntrydocumentdate: TDateField;
    LedgerEntrydocumenttype: TStringField;
    LedgerEntrydocumentnumber: TStringField;
    LedgerEntrydebit: TFloatField;
    LedgerEntrycredit: TFloatField;
    LedgerEntrybalance: TFloatField;
    dsLedgerEntry: TMyDataSource;
    TabJournalVoucher: TNxTabSheet;
    MyChart: TMyQuery;
    dsMyChart: TMyDataSource;
    MyChartaccountcode: TStringField;
    MyChartaccountname: TStringField;
    MyChartaccounttype: TStringField;
    MyChartBalAsOf: TFloatField;
    MyChartBalPeriodCovered: TFloatField;
    MyChartIndent: TLargeintField;
    Recap: TMyQuery;
    RegisterJournal: TMyTable;
    RegisterJournalidjournal: TLargeintField;
    RegisterJournalaccountcode: TStringField;
    RegisterJournalaccountname: TStringField;
    RegisterJournaldocumentdate: TDateField;
    RegisterJournaldocumenttype: TStringField;
    RegisterJournaldocumentnumber: TStringField;
    RegisterJournaldebit: TFloatField;
    RegisterJournalcredit: TFloatField;
    RegisterJournalbalance: TFloatField;
    TabSheet5: TTabSheet;
    QuickRep5: TQuickRep;
    QRBand4: TQRBand;
    QRDBText33: TQRDBText;
    QRDBText35: TQRDBText;
    QRDBText36: TQRDBText;
    QRDBText37: TQRDBText;
    QRBand7: TQRBand;
    RecapTitle: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand8: TQRBand;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    RecapPeriod: TQRLabel;
    SummaryBand3: TQRBand;
    QRLabel14: TQRLabel;
    QRExpr3: TQRExpr;
    Recapaccountcode: TStringField;
    Recapaccountname: TStringField;
    Recapdebit: TFloatField;
    Recapcredit: TFloatField;
    QRExpr4: TQRExpr;
    TabSheet7: TTabSheet;
    QuickRep7: TQuickRep;
    QRBand10: TQRBand;
    QRLabel20: TQRLabel;
    JVQrPeriod: TQRLabel;
    QRBand12: TQRBand;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRBand13: TQRBand;
    QRDBText51: TQRDBText;
    QRDBText52: TQRDBText;
    QRDBText53: TQRDBText;
    QRSubDetail2: TQRSubDetail;
    Image3: TImage;
    MyChartaccountledgertype: TStringField;
    DBImage6: TDBImage;
    ACRONYM: TNxLabel;
    TrialBalance: TMyQuery;
    QRDBImage1: TQRDBImage;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBImage3: TQRDBImage;
    QRDBText39: TQRDBText;
    QRDBText40: TQRDBText;
    QRDBText41: TQRDBText;
    QRDBImage4: TQRDBImage;
    QRDBText45: TQRDBText;
    QRDBText49: TQRDBText;
    QRDBText50: TQRDBText;
    TrialBalanceaccountcode: TStringField;
    TrialBalanceaccountname: TStringField;
    TrialBalanceGLDebit: TFloatField;
    TrialBalanceGLCredit: TFloatField;
    TrialBalanceSLDebit: TFloatField;
    TrialBalanceSLCredit: TFloatField;
    QRDBText57: TQRDBText;
    QRDBText58: TQRDBText;
    QRDBText60: TQRDBText;
    TabSchedule: TNxTabSheet;
    NxHeaderPanel11: TNxHeaderPanel;
    SMSearch: TNxButtonEdit;
    smedit: TNxLinkLabel;
    smadd: TNxLinkLabel;
    smdelete: TNxLinkLabel;
    NextDBGrid25: TNextDBGrid;
    smpanel: TNxHeaderPanel;
    NxLinkLabel78: TNxLinkLabel;
    NxLinkLabel79: TNxLinkLabel;
    NxLinkLabel80: TNxLinkLabel;
    NxLinkLabel81: TNxLinkLabel;
    TNxDBTextColumn22: TNxDBTextColumn;
    Label115: TLabel;
    DBEdit111: TDBEdit;
    smdetailpanel: TNxHeaderPanel;
    NxLinkLabel74: TNxLinkLabel;
    NextDBGrid26: TNextDBGrid;
    NxDBTextColumn31: TNxDBTextColumn;
    NxDBTextColumn32: TNxDBTextColumn;
    NxLinkLabel75: TNxLinkLabel;
    NxLinkLabel76: TNxLinkLabel;
    smdetaileditpanel: TNxHeaderPanel;
    Label121: TLabel;
    Label122: TLabel;
    NxLinkLabel77: TNxLinkLabel;
    NxLinkLabel82: TNxLinkLabel;
    DBEdit112: TDBEdit;
    DBEdit115: TDBEdit;
    NxButton12: TNxButton;
    NextDBGrid27: TNextDBGrid;
    NxDBTextColumn33: TNxDBTextColumn;
    NxDBTextColumn34: TNxDBTextColumn;
    NxDBTextColumn35: TNxDBTextColumn;
    Label116: TLabel;
    DBEdit116: TDBEdit;
    printschedule: TMyQuery;
    TabSheet13: TTabSheet;
    QuickRep13: TQuickRep;
    QRBand41: TQRBand;
    QRDBText113: TQRDBText;
    QRDBText114: TQRDBText;
    QRDBText116: TQRDBText;
    QRBand42: TQRBand;
    QRLabel68: TQRLabel;
    QRDBImage10: TQRDBImage;
    QRDBText118: TQRDBText;
    QRDBText119: TQRDBText;
    QRDBText120: TQRDBText;
    QRBand43: TQRBand;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRLabel73: TQRLabel;
    ScheduleTitle: TQRLabel;
    SummaryBand5: TQRBand;
    QRLabel69: TQRLabel;
    QRExpr21: TQRExpr;
    MyQuery1: TMyQuery;
    QRLabel2: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    Panel2: TPanel;
    NxOutlookBar1: TNxOutlookBar;
    printscheduleidscheduledetail: TLargeintField;
    printscheduleidschedulemaster: TFloatField;
    printscheduleaccountcode: TStringField;
    printscheduleaccountname: TStringField;
    printschedulebalasof: TFloatField;
    printscheduleallocamount: TFloatField;
    printschedulebalance: TCurrencyField;
    QRLabel9: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText14: TQRDBText;
    NxHeaderPanel4: TNxHeaderPanel;
    NxLabel4: TNxLabel;
    NxLabel5: TNxLabel;
    NxLinkLabel20: TNxLinkLabel;
    JVPeriodCoveredR: TNxLinkLabel;
    JVDateFrom: TNxDatePicker;
    JVDateTo: TNxDatePicker;
    JVEdit: TNxLinkLabel;
    JVDelete: TNxLinkLabel;
    NxLinkLabel21: TNxLinkLabel;
    JVDetailPanel: TNxHeaderPanel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit38: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    RequisitionDetail: TMyQuery;
    dsrequisitionDetail: TMyDataSource;
    qrRequisition: TMyQuery;
    NxLinkLabel14: TNxLinkLabel;
    RequisitionDetailidrequisitiondetail: TLargeintField;
    RequisitionDetailidrequisition: TFloatField;
    RequisitionDetailrdqty: TFloatField;
    RequisitionDetailrddescription: TStringField;
    RequisitionDetailrdcost: TFloatField;
    RequisitionDetailrdamount: TFloatField;
    signatories: TMyQuery;
    signatoriesidcvsign: TLargeintField;
    signatoriespreparedname: TStringField;
    signatoriespreparedpos: TStringField;
    signatoriesverifiedpos: TStringField;
    signatoriescertifiedname: TStringField;
    signatoriescertifiedpos: TStringField;
    signatoriesrecommendname: TStringField;
    signatoriesrecommendpos: TStringField;
    signatoriesapprovedname: TStringField;
    signatoriesapprovedpos: TStringField;
    signatoriesverifiedname: TStringField;
    RequisitionDetailrdunit: TStringField;
    RefreshRecord: TNxLinkLabel;
    DBMemo2: TDBMemo;
    MyQuery2: TMyQuery;
    Tabcanvass: TNxTabSheet;
    NxHeaderPanel5: TNxHeaderPanel;
    NxLabel6: TNxLabel;
    NxLabel7: TNxLabel;
    NxButtonEdit1: TNxButtonEdit;
    NxLinkLabel18: TNxLinkLabel;
    NxDatePicker1: TNxDatePicker;
    NxDatePicker2: TNxDatePicker;
    NxLinkLabel27: TNxLinkLabel;
    NxLinkLabel28: TNxLinkLabel;
    NxLinkLabel29: TNxLinkLabel;
    CanvassPanel: TNxHeaderPanel;
    Label33: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    DBEdit23: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit43: TDBEdit;
    DBMemo3: TDBMemo;
    NxHeaderPanel7: TNxHeaderPanel;
    Label40: TLabel;
    Label41: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    NxLinkLabel35: TNxLinkLabel;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBMemo4: TDBMemo;
    canvass: TTabSheet;
    QuickRep4: TQuickRep;
    QRBand11: TQRBand;
    QRDBText32: TQRDBText;
    QRDBText34: TQRDBText;
    QRDBText43: TQRDBText;
    Label56: TLabel;
    DBEdit54: TDBEdit;
    NxLinkLabel16: TNxLinkLabel;
    qrRequisitionidrequisition: TLargeintField;
    qrRequisitionrvDate: TDateField;
    qrRequisitionrvPCode: TStringField;
    qrRequisitionrvName: TStringField;
    qrRequisitionrvNumber: TStringField;
    qrRequisitionamount: TFloatField;
    qrRequisitionstatus: TStringField;
    qrRequisitionrequester: TStringField;
    qrRequisitionuserid: TLargeintField;
    qrRequisitioncheckboxstatus: TLargeintField;
    qrRequisitionrvdescription: TMemoField;
    qrRequisitionacctgstatus: TStringField;
    qrRequisitioncanvasser: TStringField;
    qrRequisitionidrequisitiondetail: TLargeintField;
    qrRequisitionidrequisition_1: TFloatField;
    qrRequisitionrdqty: TFloatField;
    qrRequisitionrddescription: TStringField;
    qrRequisitionrdcost: TFloatField;
    qrRequisitionrdamount: TFloatField;
    qrRequisitionrdunit: TStringField;
    qrcanvass: TMyQuery;
    qrcanvassidrequisition: TLargeintField;
    qrcanvassrvDate: TDateField;
    qrcanvassrvPCode: TStringField;
    qrcanvassrvName: TStringField;
    qrcanvassrvNumber: TStringField;
    qrcanvassamount: TFloatField;
    qrcanvassstatus: TStringField;
    qrcanvassrequester: TStringField;
    qrcanvassuserid: TLargeintField;
    qrcanvasscheckboxstatus: TLargeintField;
    qrcanvassrvdescription: TMemoField;
    qrcanvassacctgstatus: TStringField;
    qrcanvasscanvasser: TStringField;
    qrcanvassidrequisitiondetail: TLargeintField;
    qrcanvassidrequisition_1: TFloatField;
    qrcanvassrdqty: TFloatField;
    qrcanvassrddescription: TStringField;
    qrcanvassrdcost: TFloatField;
    qrcanvassrdamount: TFloatField;
    qrcanvassrdunit: TStringField;
    CanvasB: TTabSheet;
    QuickRep6: TQuickRep;
    QRBand16: TQRBand;
    QRDBText30: TQRDBText;
    QRDBText31: TQRDBText;
    QRDBText38: TQRDBText;
    TabSheet3: TTabSheet;
    quickrep8: TQuickRep;
    QRBand18: TQRBand;
    QRBand19: TQRBand;
    QRDBText46: TQRDBText;
    QRDBText48: TQRDBText;
    QRDBText54: TQRDBText;
    QRDBText55: TQRDBText;
    QRDBText56: TQRDBText;
    QRDBText59: TQRDBText;
    QRDBText61: TQRDBText;
    QRDBText62: TQRDBText;
    QRDBText63: TQRDBText;
    qrcanvassaddress: TStringField;
    RequisitionDetailrdcost3: TFloatField;
    RequisitionDetailrdamount3: TFloatField;
    RequisitionDetailsupplier2: TStringField;
    RequisitionDetailsupplier3: TStringField;
    Asupplier: TMyQuery;
    AsupplieridAsupplier: TLargeintField;
    Asupplieridflag: TLargeintField;
    Asuppliersupplier: TStringField;
    QRPO: TMyQuery;
    dsqrpo: TMyDataSource;
    Abstract: TTabSheet;
    QuickRep9: TQuickRep;
    QRBand24: TQRBand;
    dsSignatories: TMyDataSource;
    signatoriesAGMName: TStringField;
    signatoriesAGMpos: TStringField;
    signatoriesCOMDName: TStringField;
    signatoriesCOMDpos: TStringField;
    signatoriesChairmanName: TStringField;
    signatoriesChairmanPos: TStringField;
    UpdateJournal: TMyQuery;
    QuickRep10: TQuickRep;
    QRBand25: TQRBand;
    QRBand26: TQRBand;
    QRDBText93: TQRDBText;
    QRDBText94: TQRDBText;
    QRDBText95: TQRDBText;
    c: TQRDBText;
    QRDBText99: TQRDBText;
    QRBand28: TQRBand;
    RequisitionDetaildocnumber: TStringField;
    NxLinkLabel48: TNxLinkLabel;
    JVSearch: TNxButtonEdit;
    NxLinkLabel49: TNxLinkLabel;
    MyUsersArea: TStringField;
    RequisitionTotal: TMyQuery;
    MyDataSource1: TMyDataSource;
    RequisitionTotaltotal: TFloatField;
    NxLinkLabel25: TNxLinkLabel;
    NxLinkLabel26: TNxLinkLabel;
    NxLinkLabel50: TNxLinkLabel;
    NxHeaderPanel12: TNxHeaderPanel;
    Label30: TLabel;
    Label32: TLabel;
    Label38: TLabel;
    Label46: TLabel;
    NxLinkLabel51: TNxLinkLabel;
    NxLinkLabel52: TNxLinkLabel;
    DBEdit21: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit36: TDBEdit;
    Acounter: TMyQuery;
    dsacounter: TMyDataSource;
    AcounterSA: TLargeintField;
    AcounterUpdate: TMyQuery;
    dsApcounterupdate: TMyDataSource;
    RVcount: TMyQuery;
    v: TMyDataSource;
    RVcountrvcount: TLargeintField;
    QRBand29: TQRBand;
    QRDBImage5: TQRDBImage;
    QRDBText101: TQRDBText;
    QRDBText102: TQRDBText;
    QRDBText103: TQRDBText;
    QRLabel33: TQRLabel;
    QRBand5: TQRBand;
    QRDBImage6: TQRDBImage;
    QRDBText104: TQRDBText;
    QRDBText105: TQRDBText;
    QRDBText106: TQRDBText;
    QRLabel36: TQRLabel;
    QRDBText90: TQRDBText;
    QRDBText89: TQRDBText;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel47: TQRLabel;
    QRSysData7: TQRSysData;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    AcounteridAcounter: TLargeintField;
    AcounterDMO: TLargeintField;
    AcounterPAO: TLargeintField;
    AcounterSAO: TLargeintField;
    AcounterLAO: TLargeintField;
    QRDBImage7: TQRDBImage;
    QRDBText107: TQRDBText;
    QRDBText108: TQRDBText;
    QRDBText109: TQRDBText;
    QRLabel62: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel63: TQRLabel;
    QRDBText110: TQRDBText;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    QRSysData9: TQRSysData;
    QRDBText111: TQRDBText;
    QRDBText112: TQRDBText;
    QRDBText115: TQRDBText;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRSysData11: TQRSysData;
    QRBand21: TQRBand;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRDBText67: TQRDBText;
    QRDBText68: TQRDBText;
    QRDBText69: TQRDBText;
    QRDBText117: TQRDBText;
    QRDBText121: TQRDBText;
    QRDBText122: TQRDBText;
    QRLabel106: TQRLabel;
    QRLabel110: TQRLabel;
    QRShape29: TQRShape;
    QRLabel112: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel113: TQRLabel;
    QRLabel115: TQRLabel;
    QRShape33: TQRShape;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    QRLabel138: TQRLabel;
    QRSysData15: TQRSysData;
    Label48: TLabel;
    DBEdit41: TDBEdit;
    QRDBText76: TQRDBText;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    RequisitionDetailbidopen: TDateTimeField;
    qrcanvassbidopen: TDateTimeField;
    QRLabel157: TQRLabel;
    NxHeaderPanel13: TNxHeaderPanel;
    NxButton4: TNxButton;
    NxEdit1: TNxEdit;
    NxLabel8: TNxLabel;
    NxButton5: TNxButton;
    RequisitionDetailbidyear: TDateTimeField;
    QRLabel159: TQRLabel;
    AcounterDPO: TLargeintField;
    AcounterPPO: TLargeintField;
    AcounterLPO: TLargeintField;
    AcounterSPO: TLargeintField;
    AcounterSDPO: TLargeintField;
    AcounterSPPO: TLargeintField;
    AcounterSLPO: TLargeintField;
    AcounterSSPO: TLargeintField;
    qrcanvassbidyear: TDateTimeField;
    NxLinkLabel17: TNxLinkLabel;
    NxHeaderPanel14: TNxHeaderPanel;
    Label85: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label93: TLabel;
    DBEdit73: TDBEdit;
    DBEdit77: TDBEdit;
    DBMemo6: TDBMemo;
    DBEdit80: TDBEdit;
    DBEdit82: TDBEdit;
    signatoriesRrecommended: TStringField;
    signatoriesRrecompos: TStringField;
    NxLinkLabel54: TNxLinkLabel;
    NxHeaderPanel15: TNxHeaderPanel;
    GroupBox4: TGroupBox;
    Label95: TLabel;
    DBEdit84: TDBEdit;
    Label96: TLabel;
    DBEdit85: TDBEdit;
    Label97: TLabel;
    DBEdit86: TDBEdit;
    Label98: TLabel;
    DBEdit87: TDBEdit;
    GroupBox5: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    NxLinkLabel55: TNxLinkLabel;
    NxLinkLabel56: TNxLinkLabel;
    NxLinkLabel57: TNxLinkLabel;
    qrcanvassrpo: TStringField;
    DataSource1: TDataSource;
    QRDBText96: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText151: TQRDBText;
    GroupBox8: TGroupBox;
    DBEdit76: TDBEdit;
    Label87: TLabel;
    qrRequisitionAllocation: TStringField;
    Label12: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    AcounterSHP: TLargeintField;
    AcounterSHS: TLargeintField;
    AcounterSHL: TLargeintField;
    AcounterSHPPO: TLargeintField;
    AcounterSHSPO: TLargeintField;
    AcounterSHLPO: TLargeintField;
    AcounterSHDPO1: TLargeintField;
    AcounterSHDPO2: TLargeintField;
    Label17: TLabel;
    DBEdit12: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    QRLabel21: TQRLabel;
    QRDBText157: TQRDBText;
    ChartLedgerrvName: TStringField;
    DBEdit16: TDBEdit;
    MyUsersDepartment: TStringField;
    signatoriesISDRecom: TStringField;
    signatoriesOGMRECOM: TStringField;
    signatoriesSHOPRecom: TStringField;
    signatoriesESDRECOM: TStringField;
    signatoriesCADRECOM: TStringField;
    signatoriesFSDRECOM: TStringField;
    signatoriesLAORECOM: TStringField;
    signatoriesPAORECOM: TStringField;
    signatoriesSAORECOM: TStringField;
    signatoriesCOMDRECOM: TStringField;
    signatoriesISDRecomPOs: TStringField;
    signatoriesOGMrecompos: TStringField;
    signatoriesSHOPrecompos: TStringField;
    signatoriesESDrecompos: TStringField;
    signatoriesFSDrecompos: TStringField;
    signatoriesCADrecompos: TStringField;
    signatoriesCOMDrecompos: TStringField;
    signatoriesLAOrecompos: TStringField;
    signatoriesSAOrecompos: TStringField;
    signatoriesPAOrecompos: TStringField;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    TabSheet6: TTabSheet;
    QuickRep3: TQuickRep;
    QRBand6: TQRBand;
    QRLabel142: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel19: TQRLabel;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText29: TQRDBText;
    QRDBText98: TQRDBText;
    QRDBText100: TQRDBText;
    QRLabel61: TQRLabel;
    BidOpenDate: TQRLabel;
    BidOpenTime: TQRLabel;
    BidOpenYear: TQRLabel;
    QRGroup1: TQRGroup;
    QRBand38: TQRBand;
    QRLabel34: TQRLabel;
    QRExpr7: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRDBText162: TQRDBText;
    QRDBText163: TQRDBText;
    QRLabel190: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRShape94: TQRShape;
    QRGroup2: TQRGroup;
    QRShape102: TQRShape;
    QRLabel208: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel210: TQRLabel;
    QRLabel211: TQRLabel;
    QRShape103: TQRShape;
    QRLabel212: TQRLabel;
    QRBand40: TQRBand;
    QRGroup3: TQRGroup;
    QRBand44: TQRBand;
    QRLabel213: TQRLabel;
    QRDBText171: TQRDBText;
    QRDBText172: TQRDBText;
    QRDBText173: TQRDBText;
    QRLabel214: TQRLabel;
    QRLabel215: TQRLabel;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRLabel216: TQRLabel;
    QRShape106: TQRShape;
    QRDBText174: TQRDBText;
    QRShape107: TQRShape;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    QRShape108: TQRShape;
    QRLabel221: TQRLabel;
    QRGroup4: TQRGroup;
    QRBand45: TQRBand;
    QRExpr16: TQRExpr;
    QRLabel222: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    QRShape109: TQRShape;
    QRShape110: TQRShape;
    QRLabel225: TQRLabel;
    QRLabel226: TQRLabel;
    QRShape111: TQRShape;
    QRShape112: TQRShape;
    QRLabel227: TQRLabel;
    TabJoborder: TTabSheet;
    QuickRep14: TQuickRep;
    QRBand48: TQRBand;
    QRDBText185: TQRDBText;
    QRDBText186: TQRDBText;
    QRDBText187: TQRDBText;
    QRDBText188: TQRDBText;
    QRDBImage13: TQRDBImage;
    QRDBText189: TQRDBText;
    QRDBText190: TQRDBText;
    QRDBText191: TQRDBText;
    QRLabel255: TQRLabel;
    QRLabel256: TQRLabel;
    QRLabel257: TQRLabel;
    QRShape137: TQRShape;
    QRLabel258: TQRLabel;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRLabel259: TQRLabel;
    QRLabel260: TQRLabel;
    QRLabel261: TQRLabel;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRShape142: TQRShape;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRLabel264: TQRLabel;
    QRLabel265: TQRLabel;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel268: TQRLabel;
    QRLabel269: TQRLabel;
    QRLabel270: TQRLabel;
    QRDBText192: TQRDBText;
    QRLabel272: TQRLabel;
    QRLabel273: TQRLabel;
    QRLabel274: TQRLabel;
    QRShape144: TQRShape;
    QRBand49: TQRBand;
    QRDBText193: TQRDBText;
    QRDBText194: TQRDBText;
    QRDBText195: TQRDBText;
    QRDBText196: TQRDBText;
    QRDBText197: TQRDBText;
    QRSysData20: TQRSysData;
    QRBand50: TQRBand;
    QRDBText198: TQRDBText;
    QRShape145: TQRShape;
    QRLabel277: TQRLabel;
    QRShape146: TQRShape;
    QRShape147: TQRShape;
    QRLabel278: TQRLabel;
    QRLabel279: TQRLabel;
    QRLabel280: TQRLabel;
    QRShape148: TQRShape;
    QRLabel281: TQRLabel;
    QRShape149: TQRShape;
    QRLabel282: TQRLabel;
    QRLabel283: TQRLabel;
    QRShape150: TQRShape;
    QRLabel284: TQRLabel;
    QRMemo3: TQRMemo;
    QRBand51: TQRBand;
    QRDBText199: TQRDBText;
    QRLabel285: TQRLabel;
    QRShape151: TQRShape;
    QRLabel286: TQRLabel;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRLabel287: TQRLabel;
    QRLabel288: TQRLabel;
    QRLabel289: TQRLabel;
    QRShape154: TQRShape;
    QRLabel290: TQRLabel;
    QRShape155: TQRShape;
    QRLabel291: TQRLabel;
    QRLabel292: TQRLabel;
    QRShape156: TQRShape;
    QRLabel293: TQRLabel;
    QRMemo4: TQRMemo;
    QRGroup7: TQRGroup;
    QRBand52: TQRBand;
    QRExpr14: TQRExpr;
    QRLabel294: TQRLabel;
    QRLabel295: TQRLabel;
    QRShape143: TQRShape;
    QRLabel271: TQRLabel;
    QRShape157: TQRShape;
    QRShape158: TQRShape;
    AcounterJDPO: TLargeintField;
    AcounterJPPO: TLargeintField;
    AcounterJSPO: TLargeintField;
    AcounterJLPO: TLargeintField;
    GroupBox6: TGroupBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    AcounterJSHDPO1: TLargeintField;
    AcounterJSHDPO2: TLargeintField;
    AcounterJSHPPO: TLargeintField;
    AcounterJSHSPO: TLargeintField;
    AcounterJSHLPO: TLargeintField;
    NxLinkLabel2: TNxLinkLabel;
    nhpJoborder: TNxHeaderPanel;
    NxLabel3: TNxLabel;
    NxButton1: TNxButton;
    NxEdit2: TNxEdit;
    NxButton2: TNxButton;
    qrcanvassjobOrder: TStringField;
    NxComboBox1: TNxComboBox;
    signatoriesmember2: TStringField;
    signatoriesmember2pos: TStringField;
    QRDBText203: TQRDBText;
    QRDBText205: TQRDBText;
    QRDBText206: TQRDBText;
    PayeeCheck: TMyQuery;
    PayeeCheckPCode: TStringField;
    PayeeCheckName: TStringField;
    QRPOrvdate: TDateField;
    QRPOrvpcode: TStringField;
    QRPOrvname: TStringField;
    QRPOrvnumber: TStringField;
    QRPOamount: TFloatField;
    QRPOrequester: TStringField;
    QRPOrvdescription: TMemoField;
    QRPOsupplier2nd: TStringField;
    QRPOsupplier3rd: TStringField;
    QRPOidrequisitiondetail: TLargeintField;
    QRPOidrequisition: TFloatField;
    QRPOrdqty: TFloatField;
    QRPOrddescription: TStringField;
    QRPOrdcost: TFloatField;
    QRPOrdamount: TFloatField;
    QRPOrdunit: TStringField;
    QRPOrdcost2: TFloatField;
    QRPOrdamount2: TFloatField;
    QRPOrdcost3: TFloatField;
    QRPOrdamount3: TFloatField;
    QRPOsupplier2: TStringField;
    QRPOsupplier3: TStringField;
    QRPOdocnumber: TStringField;
    QRPObidopen: TDateTimeField;
    QRPObidyear: TDateTimeField;
    QRBand9: TQRBand;
    QRGroup6: TQRGroup;
    QRBand23: TQRBand;
    QRBand32: TQRBand;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRDBText27: TQRDBText;
    QRDBText15: TQRDBText;
    QRSysData16: TQRSysData;
    QRDBText24: TQRDBText;
    QRExpr15: TQRExpr;
    QRLabel183: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    QRLabel151: TQRLabel;
    qrRequisitiondateApproved: TDateField;
    QRShape20: TQRShape;
    QRBand30: TQRBand;
    QRDBText170: TQRDBText;
    QRShape96: TQRShape;
    QRLabel199: TQRLabel;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRLabel200: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRShape99: TQRShape;
    QRLabel204: TQRLabel;
    QRShape100: TQRShape;
    QRLabel205: TQRLabel;
    QRLabel206: TQRLabel;
    QRShape101: TQRShape;
    QRLabel207: TQRLabel;
    QRMemo2: TQRMemo;
    QRBand15: TQRBand;
    QRDBText91: TQRDBText;
    QRLabel22: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel51: TQRLabel;
    QRShape3: TQRShape;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape4: TQRShape;
    QRLabel54: TQRLabel;
    QRShape5: TQRShape;
    QRLabel55: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRDBText159: TQRDBText;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRShape71: TQRShape;
    qrcanvassPODate: TDateField;
    NxLinkLabel3: TNxLinkLabel;
    Exportitems: TMyQuery;
    signatoriesAudName: TStringField;
    signatoriesAudpos: TStringField;
    Label107: TLabel;
    DBEdit99: TDBEdit;
    qrRequisitionPos: TStringField;
    Label108: TLabel;
    DBEdit100: TDBEdit;
    VolgaDBEdit4: TDBEdit;
    JVAdd: TNxLinkLabel;
    Timer2: TTimer;
    CRDBGrid2: TCRDBGrid1;
    CRDBGrid1: TCRDBGrid1;
    CRDBGrid3: TCRDBGrid1;
    CRDBGrid4: TCRDBGrid1;
    TabPO: TNxTabSheet;
    NxHeaderPanel3: TNxHeaderPanel;
    NxButtonEdit2: TNxButtonEdit;
    NxLabel9: TNxLabel;
    NxLabel10: TNxLabel;
    NxLinkLabel4: TNxLinkLabel;
    NxDatePicker3: TNxDatePicker;
    NxDatePicker4: TNxDatePicker;
    CRDBGrid11: TCRDBGrid1;
    NxLinkLabel5: TNxLinkLabel;
    NxLinkLabel6: TNxLinkLabel;
    NxLinkLabel7: TNxLinkLabel;
    NxHeaderPanel8: TNxHeaderPanel;
    NxLinkLabel8: TNxLinkLabel;
    NxLinkLabel9: TNxLinkLabel;
    DBEdit34: TDBEdit;
    Label11: TLabel;
    DBEdit47: TDBEdit;
    Label51: TLabel;
    DBEdit48: TDBEdit;
    Label52: TLabel;
    Label1: TNxLinkLabel;
    NxHeaderPanel9: TNxHeaderPanel;
    NxLinkLabel10: TNxLinkLabel;
    NxLinkLabel11: TNxLinkLabel;
    CRDBGrid12: TCRDBGrid1;
    poc: TMyQuery;
    pocidpocontrol: TLargeintField;
    pocMY: TStringField;
    pocCounter: TLargeintField;
    NxLinkLabel12: TNxLinkLabel;
    NxHeaderPanel16: TNxHeaderPanel;
    NxLinkLabel13: TNxLinkLabel;
    Label53: TLabel;
    DBEdit50: TDBEdit;
    Label54: TLabel;
    DBEdit51: TDBEdit;
    Label55: TLabel;
    DBEdit96: TDBEdit;
    Label111: TLabel;
    DBEdit103: TDBEdit;
    Label112: TLabel;
    DBEdit104: TDBEdit;
    CRDBGrid13: TCRDBGrid1;
    NxLinkLabel19: TNxLinkLabel;
    Label113: TNxLinkLabel;
    NxLinkLabel23: TNxLinkLabel;
    RQDetailPO: TMyQuery;
    dsRQDetailPO: TMyDataSource;
    RQDetailPOidrequisitiondetail: TLargeintField;
    RQDetailPOidrequisition: TFloatField;
    RQDetailPOrdqty: TFloatField;
    RQDetailPOrddescription: TStringField;
    RQDetailPOrdcost: TFloatField;
    RQDetailPOrdamount: TFloatField;
    RQDetailPOrdunit: TStringField;
    RQDetailPOrdcost2: TFloatField;
    RQDetailPOrdamount2: TFloatField;
    RQDetailPOrdcost3: TFloatField;
    RQDetailPOrdamount3: TFloatField;
    RQDetailPOsupplier2: TStringField;
    RQDetailPOsupplier3: TStringField;
    RQDetailPOdocnumber: TStringField;
    RQDetailPObidopen: TDateTimeField;
    RQDetailPObidyear: TDateTimeField;
    TransferPO: TMyQuery;
    NxLinkLabel33: TNxLinkLabel;
    NxHeaderPanel6: TNxHeaderPanel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    NxLinkLabel40: TNxLinkLabel;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    NxLinkLabel42: TNxLinkLabel;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    DBMemo5: TDBMemo;
    NxLinkLabel41: TNxLinkLabel;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    NxLinkLabel47: TNxLinkLabel;
    NxHeaderPanel10: TNxHeaderPanel;
    NxLinkLabel45: TNxLinkLabel;
    NxLinkLabel46: TNxLinkLabel;
    CRDBGrid5: TCRDBGrid1;
    NxHeaderPanel17: TNxHeaderPanel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    CRDBGrid15: TCRDBGrid1;
    NxLinkLabel22: TNxLinkLabel;
    NxLinkLabel24: TNxLinkLabel;
    CRDBGrid16: TCRDBGrid1;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit42: TDBEdit;
    NxHeaderPanel18: TNxHeaderPanel;
    NxLinkLabel34: TNxLinkLabel;
    NxLinkLabel36: TNxLinkLabel;
    CRDBGrid17: TCRDBGrid1;
    Label84: TLabel;
    Label114: TLabel;
    DBEdit44: TAdvDBDateTimePicker;
    DBEdit105: TAdvDBDateTimePicker;
    Label71: TNxLinkLabel;
    Label72: TNxLinkLabel;
    Label83: TNxLinkLabel;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    NxHeaderPanel19: TNxHeaderPanel;
    DBEdit106: TDBEdit;
    DBEdit107: TDBEdit;
    DBEdit108: TDBEdit;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    NxLinkLabel37: TNxLinkLabel;
    NxLinkLabel39: TNxLinkLabel;
    QRExpr13: TQRExpr;
    QRLabel152: TQRLabel;
    RequisitionDetailrdcost2: TFloatField;
    RequisitionDetailrdamount2: TFloatField;
    DBEdit49: TAdvDBDateTimePicker;
    DBEdit109: TDBEdit;
    Label117: TLabel;
    NxHeaderPanel20: TNxHeaderPanel;
    NxLinkLabel38: TNxLinkLabel;
    NxLinkLabel43: TNxLinkLabel;
    CRDBGrid18: TCRDBGrid1;
    Label86: TNxLinkLabel;
    CRDBGrid6: TCRDBGrid;
    MyConnection1: TMyConnection;
    dsRequester: TMyDataSource;
    Requester: TMyQuery;
    Requesterfirstname: TStringField;
    Requestermiddleinitial: TStringField;
    Requesterlastname: TStringField;
    Requestertitle: TStringField;
    POfilterPrnt: TMyQuery;
    POfilterPrntAllowprintBudget: TBooleanField;
    RqPO: TMyQuery;
    RqPORVNumber: TStringField;
    RqPOidrequisition: TLargeintField;
    RqPOrvDate: TDateField;
    RqPOrvPCode: TStringField;
    RqPOrvName: TStringField;
    RqPOamount: TFloatField;
    RqPOstatus: TStringField;
    RqPOrequester: TStringField;
    RqPOuserid: TLargeintField;
    RqPOcheckboxstatus: TLargeintField;
    RqPOrvdescription: TMemoField;
    RqPOacctgstatus: TStringField;
    RqPOcanvasser: TStringField;
    RqPOaddress: TStringField;
    RqPOdenydescription: TStringField;
    RqPOref: TStringField;
    RqPOrpo: TStringField;
    RqPOallocation: TStringField;
    RqPOastatus: TBooleanField;
    RqPOjoborder: TStringField;
    RqPOallowprint: TBooleanField;
    RqPOsupplier2: TStringField;
    RqPOsupplier3: TStringField;
    RqPOdateapproved: TDateField;
    RqPOPOdate: TDateField;
    RqPOPos: TStringField;
    dsRqPO: TMyDataSource;
    CRDBGrid14: TCRDBGrid1;
    QRBand14: TQRBand;
    QRDBText17: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText28: TQRDBText;
    QRDBText44: TQRDBText;
    QRDBText47: TQRDBText;
    QRDBText65: TQRDBText;
    QRDBText66: TQRDBText;
    QRDBText70: TQRDBText;
    QRDBText72: TQRDBText;
    QRDBText42: TQRDBText;
    NxComboBoxCanvas: TNxComboBox;
    Label45: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Image6: TImage;
    Image8: TImage;
    NxHeaderPanel21: TNxHeaderPanel;
    MaterialBtn: TNxButton;
    NxButton3: TNxButton;
    NxLinkLabel44: TNxLinkLabel;
    signatoriesOthrsName: TStringField;
    signatoriesOthrsPosition: TStringField;
    OthrRequisition: TTabSheet;
    QRLabel11: TQRLabel;
    RecommendedCombo: TNxComboBox;
    Label119: TLabel;
    SubmitBtn: TNxButton;
    AddItemCloseBtn: TNxButton;
    RequestAddBtn: TNxButton;
    RequestCancel: TNxButton;
    CanvassSaveBtn: TNxButton;
    CanvassCancelBtn: TNxButton;
    DBCheckBox1: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBEdit113: TDBEdit;
    DBEdit114: TDBEdit;
    DBEdit117: TDBEdit;
    DBEdit118: TDBEdit;
    DBEdit119: TDBEdit;
    Label120: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    NxButton6: TNxButton;
    NxButton7: TNxButton;
    NxButton8: TNxButton;
    NxButton9: TNxButton;
    QRLabel13: TQRLabel;
    QRDBText73: TQRDBText;
    QRLabel27: TQRLabel;
    QRDBText74: TQRDBText;
    UserCanvasser: TMyQuery;
    UserCanvasserUserID: TStringField;
    NxLinkLabel15: TNxLinkLabel;
    NxHeaderPanel22: TNxHeaderPanel;
    NxLinkLabel30: TNxLinkLabel;
    NxEdit3: TNxEdit;
    NxHeaderPanel23: TNxHeaderPanel;
    NxLinkLabel31: TNxLinkLabel;
    NxButton10: TNxButton;
    NxButton11: TNxButton;
    PopupMenu1: TPopupMenu;
    Label127: TLabel;
    Label128: TLabel;
    PDJSillyLabel1: TPDJSillyLabel;
    NxLabel1: TNxLabel;
    NxLabel11: TNxLabel;
    NxButton13: TNxButton;
    AdvDBDateTimePicker1: TAdvDBDateTimePicker;
    qrcanvassJOdate: TDateField;
    JOaddressQ: TMyQuery;
    JOaddressQrvNumber: TStringField;
    JOaddressQrvDate: TDateField;
    JOaddressQrvPCode: TStringField;
    JOaddressQrvName: TStringField;
    JOaddressQamount: TFloatField;
    JOaddressQrequester: TStringField;
    JOaddressQpoaddress: TStringField;
    JOaddressQJOdate: TDateField;
    JOaddressQjoborder: TStringField;
    QRDBText75: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel30: TQRLabel;
    QRShape15: TQRShape;
    canvasReport: TfrxReport;
    canvassFrx: TfrxDBDataset;
    companyFrx: TfrxDBDataset;
    signFrx: TfrxDBDataset;
    canvasser: TfrxDBDataset;
    RequisitionDetailsplrBrand1: TStringField;
    RequisitionDetailsplrBrand2: TStringField;
    RequisitionDetailsplrBrand3: TStringField;
    DBEdit78: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit120: TDBEdit;
    Label129: TLabel;
    Label130: TLabel;
    Label132: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    Label138: TLabel;
    Label131: TLabel;
    Label140: TLabel;
    RQDetailPOsplrBrand1: TStringField;
    RQDetailPOsplrBrand2: TStringField;
    RQDetailPOsplrBrand3: TStringField;
    QRLabel31: TQRLabel;
    QRDBText77: TQRDBText;
    QRImage1: TQRImage;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    Image9: TImage;
    AdvSmoothLabel1: TAdvSmoothLabel;
    Timer3: TTimer;
    Image7: TImage;
    NxFlipContainer1: TNxFlipContainer;
    UserListPanel: TNxFlipPanel;
    NextDBGrid1: TNextDBGrid;
    TNxDBTextColumn2: TNxDBTextColumn;
    TNxDBTextColumn5: TNxDBTextColumn;
    TNxDBTextColumn6: TNxDBTextColumn;
    SearchUser: TNxButtonEdit;
    EditButton: TNxLinkLabel;
    AddLink: TNxLinkLabel;
    DeleteLink: TNxLinkLabel;
    UserMaintenancePanel: TNxFlipPanel;
    Label10: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label82: TLabel;
    Label16: TLabel;
    EditConfirmPassword: TNxEdit;
    NxLinkLabel1: TNxLinkLabel;
    SaveUser: TNxLinkLabel;
    CancelUser: TNxLinkLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBImage2: TDBImage;
    VolgaDBEdit1: TDBEdit;
    VolgaDBEdit2: TDBEdit;
    DBEdit6: TDBComboBox;
    Panel5: TPanel;
    Image10: TImage;
    EditBtn: TNxButton;
    SaveBtn: TNxButton;
    CancelBtn: TNxButton;
    DBImage3: TDBImage;
    LoadLogo: TNxLinkLabel;
    Button1: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit1: TDBEdit;
    GroupBox3: TGroupBox;
    Label37: TLabel;
    Label94: TLabel;
    DBEdit35: TDBEdit;
    DBEdit83: TDBEdit;
    GroupBox1: TGroupBox;
    Label99: TLabel;
    Label100: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label73: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    PDJSillyGroup1: TPDJSillyGroup;
    Label13: TLabel;
    Label118: TLabel;
    DBEdit33: TDBEdit;
    DBEdit110: TDBEdit;
    GroupBox2: TGroupBox;
    Label137: TLabel;
    Label139: TLabel;
    Label133: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label77: TLabel;
    DBEdit135: TDBEdit;
    DBEdit130: TDBEdit;
    DBEdit132: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit71: TDBEdit;
    DBEdit72: TDBEdit;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Panel4: TPanel;
    Panel3: TPanel;
    NxHeaderPanel1: TNxHeaderPanel;
    NxLinkLabel32: TNxLinkLabel;
    NxEdit4: TNxEdit;
    Image1: TImage;
    QRShape16: TQRShape;
    QRLabel32: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel35: TQRLabel;
    QRShape26: TQRShape;
    QRLabel76: TQRLabel;
    QRShape27: TQRShape;
    QRLabel77: TQRLabel;
    QRShape28: TQRShape;
    QRLabel78: TQRLabel;
    QRShape32: TQRShape;
    QRLabel79: TQRLabel;
    QRShape34: TQRShape;
    QRLabel80: TQRLabel;
    QRShape35: TQRShape;
    QRPOsplrBrand1: TStringField;
    QRPOsplrBrand2: TStringField;
    QRPOsplrBrand3: TStringField;
    QRDBText78: TQRDBText;
    QRDBText64: TQRDBText;
    QRDBText71: TQRDBText;
    Label141: TLabel;
    DBEdit121: TDBEdit;
    DBEdit122: TDBEdit;
    Label142: TLabel;
    signatoriesCORPLANrecompos: TStringField;
    signatoriesCORPLANrecom: TStringField;
    isoQuery: TMyQuery;
    isoQueryidisofmnumber: TIntegerField;
    isoQueryrevision: TStringField;
    isoQuerydatestarted: TDateField;
    isoQueryreportType: TStringField;
    isoQueryDepartment: TStringField;
    isoQuerydateF: TStringField;
    QRBand17: TQRBand;
    isoTfrx: TfrxDBDataset;
    QRDBText85: TQRDBText;
    QRDBText86: TQRDBText;
    QRDBText87: TQRDBText;
    QRBand20: TQRBand;
    isoQueryisoNumber1019: TStringField;
    QRBand22: TQRBand;
    QRDBText88: TQRDBText;
    QRDBText92: TQRDBText;
    QRDBText97: TQRDBText;
    QRLabel81: TQRLabel;
    QRDBText127: TQRDBText;
    poRvnoQ: TMyQuery;
    poRvnoQidpo: TFloatField;
    poRvnoQrvNo: TMemoField;
    MyUsersPassWord: TStringField;
    QRDBText79: TQRDBText;
    QRDBText84: TQRDBText;
    QRDBText83: TQRDBText;
    QRBand33: TQRBand;
    QRShape86: TQRShape;
    QRShape85: TQRShape;
    QRShape78: TQRShape;
    QRDBText80: TQRDBText;
    QRDBText82: TQRDBText;
    QRDBText158: TQRDBText;
    QRLabel177: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRShape80: TQRShape;
    QRDBText160: TQRDBText;
    QRLabel182: TQRLabel;
    QRShape81: TQRShape;
    QRDBText161: TQRDBText;
    QRShape82: TQRShape;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRLabel186: TQRLabel;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRDBText81: TQRDBText;
    QRDBText181: TQRDBText;
    QRDBText201: TQRDBText;
    QRDBText16: TQRDBText;
    QRShape79: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure NxOutlookBar1Select(Sender: TObject);
    procedure LoadLogoClick(Sender: TObject);
    procedure SearchUserButtonClick(Sender: TObject);
    procedure SearchUserEnter(Sender: TObject);
    procedure SaveUserClick(Sender: TObject);
    procedure CancelUserClick(Sender: TObject);
    procedure NxLinkLabel1Click(Sender: TObject);
    procedure AddLinkClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure DeleteLinkClick(Sender: TObject);
    procedure JVSearchButtonClick(Sender: TObject);
    procedure JVEditClick(Sender: TObject);
    procedure JVDeleteClick(Sender: TObject);
    procedure NxLinkLabel20Click(Sender: TObject);
    procedure NxLinkLabel21Click(Sender: TObject);
    procedure MRTDeleteDetailClick(Sender: TObject);
    procedure SMSearchButtonClick(Sender: TObject);
    procedure smaddClick(Sender: TObject);
    procedure smeditClick(Sender: TObject);
    procedure smdeleteClick(Sender: TObject);
    procedure NxLinkLabel78Click(Sender: TObject);
    procedure NxLinkLabel79Click(Sender: TObject);
    procedure NxLinkLabel75Click(Sender: TObject);
    procedure NxButton12Click(Sender: TObject);
    procedure NextDBGrid27DblClick(Sender: TObject);
    procedure NextDBGrid27Exit(Sender: TObject);
    procedure NxLinkLabel77Click(Sender: TObject);
    procedure NxLinkLabel82Click(Sender: TObject);
    procedure NxLinkLabel76Click(Sender: TObject);
    procedure NxLinkLabel74Click(Sender: TObject);
    procedure NxLinkLabel80Click(Sender: TObject);
    procedure NxLinkLabel81Click(Sender: TObject);
    procedure printscheduleCalcFields(DataSet: TDataSet);
    procedure RefreshRecordClick(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel17Click(Sender: TObject);
    procedure NxButtonEdit1ButtonClick(Sender: TObject);
    procedure NxLinkLabel16Click(Sender: TObject);
    procedure NxLinkLabel35Click(Sender: TObject);
    procedure NxLinkLabel40Click(Sender: TObject);
    procedure NxLinkLabel42Click(Sender: TObject);
    procedure NxLinkLabel41Click(Sender: TObject);
    procedure NxLinkLabel45Click(Sender: TObject);
    procedure NxLinkLabel46Click(Sender: TObject);
    procedure NxLinkLabel27Click(Sender: TObject);
    procedure NxLinkLabel47Click(Sender: TObject);
    procedure qrcanvassrvdescriptionGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure NxLinkLabel49Click(Sender: TObject);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit54KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel52Click(Sender: TObject);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel25Click(Sender: TObject);
    procedure NxLinkLabel26Click(Sender: TObject);
    procedure NxLinkLabel50Click(Sender: TObject);
    procedure NxLinkLabel28Click(Sender: TObject);
    procedure CanvassPanelEnter(Sender: TObject);
    procedure NxButton4Click(Sender: TObject);
    procedure NxButton5Click(Sender: TObject);
    procedure DBEdit77KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit80KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit82KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel55Click(Sender: TObject);
    procedure NxLinkLabel57Click(Sender: TObject);
    procedure NxLinkLabel56Click(Sender: TObject);
    procedure NxLinkLabel54Click(Sender: TObject);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure VolgaDBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit48Exit(Sender: TObject);
    procedure RequisitionDetailAfterPost(DataSet: TDataSet);
    procedure NxHeaderPanel13MouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure NxHeaderPanel13MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure NxHeaderPanel13MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NxEdit1Change(Sender: TObject);
    procedure NxLinkLabel2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxEdit2Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxButton2Click(Sender: TObject);
    procedure QRBand18BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure NxLinkLabel3Click(Sender: TObject);
    procedure JVAddClick(Sender: TObject);
    procedure DBEdit73KeyPress(Sender: TObject; var Key: Char);
    procedure NxButtonEdit2ButtonClick(Sender: TObject);
    procedure NxLinkLabel4Click(Sender: TObject);
    procedure NxLinkLabel5Click(Sender: TObject);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure EditConfirmPasswordKeyPress(Sender: TObject; var Key: Char);
    procedure Label1Click(Sender: TObject);
    procedure NxLinkLabel11Click(Sender: TObject);
    procedure NxLinkLabel10Click(Sender: TObject);
    procedure NxLinkLabel8Click(Sender: TObject);
    procedure NxLinkLabel9Click(Sender: TObject);
    procedure NxLinkLabel6Click(Sender: TObject);
    procedure NxLinkLabel7Click(Sender: TObject);
    procedure NxLinkLabel12Click(Sender: TObject);
    procedure Label113Click(Sender: TObject);
    procedure CRDBGrid14DblClick(Sender: TObject);
    procedure NxLinkLabel22Click(Sender: TObject);
    procedure NxLinkLabel24Click(Sender: TObject);
    procedure NxLinkLabel23Click(Sender: TObject);
    procedure NxLinkLabel33Click(Sender: TObject);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure Label71Click(Sender: TObject);
    procedure NxLinkLabel34Click(Sender: TObject);
    procedure DBEdit106KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel37Click(Sender: TObject);
    procedure NxLinkLabel39Click(Sender: TObject);
    procedure NxLinkLabel19Click(Sender: TObject);
    procedure NxLinkLabel13Click(Sender: TObject);
    procedure Label86Click(Sender: TObject);
    procedure NxLinkLabel38Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure NxLinkLabel43Click(Sender: TObject);
    procedure DBEdit77Change(Sender: TObject);
    procedure CRDBGrid6DblClick(Sender: TObject);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel51Enter(Sender: TObject);
    procedure NxLinkLabel51Click(Sender: TObject);
    procedure NxLinkLabel37Enter(Sender: TObject);
    procedure CRDBGrid12DblClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
    procedure SaveBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure MaterialBtnClick(Sender: TObject);
    procedure NxLinkLabel44Click(Sender: TObject);
    procedure NxLinkLabel14Click(Sender: TObject);
    procedure NxButton3Click(Sender: TObject);
    procedure NxComboBox1CloseUp(Sender: TObject);
    procedure NxButtonEdit1Click(Sender: TObject);
    procedure NxComboBoxCanvasSelect(Sender: TObject);
    procedure NxLinkLabel36Click(Sender: TObject);
    procedure CRDBGrid17DblClick(Sender: TObject);
    procedure AddItemCloseBtnClick(Sender: TObject);
    procedure SubmitBtnClick(Sender: TObject);
    procedure RequestAddBtnClick(Sender: TObject);
    procedure RequestCancelClick(Sender: TObject);
    procedure CanvassSaveBtnClick(Sender: TObject);
    procedure CanvassCancelBtnClick(Sender: TObject);
    procedure NxButton6Click(Sender: TObject);
    procedure NxButton7Click(Sender: TObject);
    procedure NxButton8Click(Sender: TObject);
    procedure NxButton9Click(Sender: TObject);
    procedure NxEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure NxLinkLabel15Click(Sender: TObject);
    procedure NxLinkLabel30Click(Sender: TObject);
    procedure NxLinkLabel31Click(Sender: TObject);
    procedure NxButton10Click(Sender: TObject);
    procedure NxButton11Click(Sender: TObject);
    procedure JVSearchClick(Sender: TObject);
    procedure NxLinkLabel18Click(Sender: TObject);
    procedure JVPeriodCoveredRClick(Sender: TObject);
    procedure NxButtonEdit2Change(Sender: TObject);
    procedure JVSearchChange(Sender: TObject);
    procedure NxButtonEdit2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure NxLinkLabel32Click(Sender: TObject);
    procedure NxEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure NxButton13Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
   oldPos, deltaPos : TPoint;
   Moving           : Boolean;
   MovingPnl        : TNxHeaderPanel;
   LogoFileName : String;
   checker : string;
   checkWoutPO : Boolean;
   UserAdministration : integer;
   procedure DocInc(counter : string; DocInit : string);



  end;

var
  FlexAccountMainMenuForm: TFlexAccountMainMenuForm;
  EditSupp : Integer ;
implementation

uses FlexAccountIntro, Data, DateUtils, ModTools, PayeeList, datatransfer,
  InventoryReportsDownload, StrUtils, FitlerUsers;

{$R *.dfm}

procedure TFlexAccountMainMenuForm.DocInc(counter : string; DocInit : string);
begin
           if Length(counter) = 1 then
            begin
             acctdata.requisitionjoborder.Text := DocInit + '000' + Counter;
            end;
           if Length(AcounterJDPO.text) = 2 then
            begin
             acctdata.requisitionjoborder.Text := DocInit + '00'+ Counter;
            end;
           if Length(AcounterJDPO.text) = 3 then
            begin
             acctdata.requisitionjoborder.Text := DocInit + '0' + Counter;
            end;
           if Length(AcounterJDPO.text) = 4 then
            begin
             acctdata.requisitionjoborder.Text := DocInit + Counter;
            end;
end;
procedure TFlexAccountMainMenuForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   With AcctData do
     begin
       Users.close;
       Company.Close;
       Chart.Close;
       Journal.Close;
       requisition.Close;
       requisitiondetail.close;
       ScheduleMaster.Close;
       ScheduleDetail.Close;
     end;
   IntroForm.Close;
   Action := caFree;
   FlexAccountMainMenuForm := Nil;
end;

procedure TFlexAccountMainMenuForm.Timer1Timer(Sender: TObject);
begin
  DateStr.Caption := DateToStr(Now)+' '+TimeToStr(Now);
end;

procedure TFlexAccountMainMenuForm.Timer3Timer(Sender: TObject);
begin
  AdvSmoothLabel1.Caption.Text := FormatDateTime('hh:mm:ss AM/PM',now);
end;

procedure TFlexAccountMainMenuForm.FormShow(Sender: TObject);
begin
  FlexAccountMainMenuForm.WindowState := wsNormal;
  checkWoutPO := false;
  With AcctData do
    begin
      //if UsersUserRestriction.Text='USER' then NxComboBoxCanvas.Enabled:=false;
      UserAdministration := UsersIdUsers.asinteger;
      Company.Open;
      If not Company.IsEmpty then
          ACRONYM.Caption := Companycompanyacro.Text
        else
          ACRONYM.Caption := 'Edit Company';
    end;
MyNoteBook.ActivePage := TabHome;

try
  myquery2.SQL.clear;
  MyQuery2.SQL.Add('ALTER TABLE `zanecobudget`.`cvsign` ADD COLUMN `AGMPos` VARCHAR(45) AFTER `ApprovedPos`,');
  MyQuery2.SQL.Add('ADD COLUMN `AGMName` VARCHAR(45) AFTER `ApprovedPos`,');
  MyQuery2.SQL.Add('ADD COLUMN `COMDname` VARCHAR(45) AFTER `ApprovedPos`,');
  MyQuery2.SQL.Add('ADD COLUMN `COMDPos` VARCHAR(45) AFTER `ApprovedPos`,');
  MyQuery2.SQL.Add('ADD COLUMN `ChairmanName` VARCHAR(45) AFTER `ApprovedPos`,');
  MyQuery2.SQL.Add('ADD COLUMN `ChairmanPos` VARCHAR(45) AFTER `ApprovedPos`;');
  myquery2.Execute;

except
end;
end;



procedure TFlexAccountMainMenuForm.Exit1Click(Sender: TObject);
begin
  Close;
end;


procedure TFlexAccountMainMenuForm.NxOutlookBar1Select(Sender: TObject);
begin
  TabHome.Visible            := True;
  TabCompany.Visible         := True;
  TabUsers.Visible           := True;
  TabHome.Visible            := True;
  TabJournalVoucher.Visible  := True;
  TabSchedule.Visible        := True;

  Case NxOutlookBar1.Selected.Index of
   0 : MyNoteBook.ActivePage := TabHome;
   1 : begin
        if acctdata.UsersUserRestriction.Text <> 'ADMINISTRATOR' then
          begin
            MessageDlg('User not allowed..', mtError, [mbOK], 0);
            exit;
          end;

        With AcctData do
         begin
           Company.Open;
           signatories.Open;
           If not Company.IsEmpty then
             begin
               DBEdit1.ReadOnly := True;
               DBEdit2.ReadOnly := True;
               DBEdit3.ReadOnly := True;
             end
             else
             begin
               Company.AppendRecord([]);
               DBEdit1.ReadOnly := True;
               DBEdit2.ReadOnly := True;
               DBEdit3.ReadOnly := True;
             end;
           MyNoteBook.ActivePage := TabCompany;
         end;

         EditBtn.Enabled                := true;
         SaveBtn.Enabled                := false;
         CancelBtn.Enabled              := false;
       end;
   2 : begin
        if acctdata.UsersUserRestriction.Text <> 'ADMINISTRATOR' then
          begin
            MessageDlg('User not allowed..', mtError, [mbOK], 0);
            exit;
          end;
           MyUsers.Close;
           MyUsers.ParamByName('username').Text := '%';
           MyUsers.Open;
           MyNoteBook.ActivePage         := TabUsers;
           UserListPanel.Expanded        := True;
           UserMaintenancePanel.Expanded := False;

       end;

   3 : begin
        JVSearch.Text := 'Serach PCode or Number';
        NxComboBox1.Text:='PENDING';
        if (acctdata.UsersUserRestriction.Text <> 'ADMINISTRATOR') and
           (acctdata.UsersUserRestriction.Text <> 'USER') and
           (acctdata.UsersUserRestriction.Text <> 'CANVASSER') then
          begin
            MessageDlg('User not allowed..', mtError, [mbOK], 0);
            exit;
          end;

        With AcctData do
        begin
          JVDateFrom.AsDateTime   := StartOfTheMonth(now);
          JVDateTo.AsDateTime     := EndOfTheMonth(now);
          //JVSearchButtonClick(sender);

           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%';
           Requisition.ParamByName('datefrom').AsDate  := StartOfTheMonth(JVdatefrom.AsDateTime);
           Requisition.ParamByName('dateto').AsDate    := EndOfTheMonth(jvdateto.AsDateTime);
           Requisition.ParamByName('APP').Text         := 'PENDING';
           if UsersUserRestriction.Text = 'USER' then Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;

          MyNoteBook.ActivePage   := TabJournalVoucher;
          CRDBGrid2.Enabled       := true;
          nxheaderpanel14.Visible := false;
        end;
       end;

   4 : begin
        NxButtonEdit1.Text:= 'Search RV number';
        if (acctdata.UsersUserRestriction.Text <> 'ADMINISTRATOR') and
           (acctdata.UsersUserRestriction.Text <> 'CANVASSER') then
          begin
            MessageDlg('User not allowed..', mtError, [mbOK], 0);
            exit;
          end;

        With AcctData do
          begin
            NxDatePicker1.AsDateTime                     := StartOfTheMonth(now);
            NxDatePicker2.AsDateTime                     := EndOfTheMonth(now);

            CanvassData.Close;
            CanvassData.ParamByName('rv').Text          := '%';
            CanvassData.ParamByName('status').Text         := NxComboBoxCanvas.Text;
            CanvassData.ParamByName('datefrom').AsDate  := NxDatePicker1.AsDateTime;
            CanvassData.ParamByName('dateto').AsDate    := NxDatePicker2.AsDateTime;
            CanvassData.Open;

            //CanvassData.Close;
            //CanvassData.ParamByName('Rv').Text          := '%';
            //CanvassData.ParamByName('datefrom').AsDate  := StartOfTheMonth(NxDatePicker1.AsDateTime);
            //CanvassData.ParamByName('dateto').AsDate    := EndOfTheMonth(NxDatePicker2.AsDateTime);
            //CanvassData.Open;
            //CanvassData.FilterSQL  := 'r.userid like' + QuotedStr('%' + IntToStr(UserAdministration) + '%');
            //CanvassData.Refresh;
            MyNoteBook.ActivePage   := Tabcanvass;
            crdbgrid3.Enabled       := true;
            CanvassPanel.Visible    := false;
            acctdata.CanvassData.Cancel;
         end;

       end;
   5 : begin

        if (acctdata.UsersUserRestriction.Text <> 'ADMINISTRATOR') and
           (acctdata.UsersUserRestriction.Text <> 'PURCHASER') then
          begin
            MessageDlg('User not allowed..', mtError, [mbOK], 0);
            exit;
          end;

        With AcctData do
          begin
            NxDatePicker3.AsDateTime           := StartOfTheMonth(now);
            NxDatePicker4.AsDateTime           := EndOfTheMonth(now);

            PO.Close;
            PO.ParamByName('Name').Text        := '%';
            PO.ParamByName('datefrom').AsDate  := StartOfTheMonth(NxDatePicker3.AsDateTime);
            PO.ParamByName('dateto').AsDate    := EndOfTheMonth(NxDatePicker4.AsDateTime);
            PO.Open;
            PO.Refresh;
            MyNoteBook.ActivePage   := TabPO;
         end;
        NxButtonEdit2.Text := 'Search Name or PO Number';
       end;

   6 : Close;
  end;
end;

procedure TFlexAccountMainMenuForm.SaveBtnClick(Sender: TObject);
begin
 With AcctData do
    begin
      Company.Post;
      signatories.post;
      DBEdit1.ReadOnly               := True;
      DBEdit2.ReadOnly               := True;
      DBEdit3.ReadOnly               := True;
      DBEdit130.ReadOnly             := TRUE;
      DBEdit68.ReadOnly              := TRUE;
      DBEdit135.ReadOnly             := TRUE;
      DBEdit71.ReadOnly              := TRUE;
      DBEdit132.ReadOnly             := TRUE;
      DBEdit72.ReadOnly              := TRUE;
      DBEdit89.ReadOnly              := TRUE;
      DBEdit88.ReadOnly              := TRUE;
      DBEdit83.ReadOnly              := TRUE;
      DBEdit35.ReadOnly              := TRUE;

   DBEdit18.ReadOnly              := true;
   DBEdit17.ReadOnly              := true;
   DBEdit20.ReadOnly              := true;
   DBEdit19.ReadOnly              := true;
   DBEdit24.ReadOnly              := true;
   DBEdit22.ReadOnly              := true;
   DBEdit28.ReadOnly              := true;
   DBEdit25.ReadOnly              := true;
   DBEdit31.ReadOnly              := true;
   DBEdit30.ReadOnly              := true;
   DBEdit69.ReadOnly              := true;
   DBEdit40.ReadOnly              := true;
   DBEdit81.ReadOnly              := true;
   DBEdit70.readonly              := true;

   DBEdit101.ReadOnly             := true;
   DBEdit102.ReadOnly             := true;

   DBEdit33.ReadOnly             := true;
   DBEdit110.ReadOnly             := true;

      DBEdit75.ReadOnly              := TRUE;
      DBEdit74.ReadOnly              := TRUE;
    //  EditLink.Visible   := True;
    //  SaveLink.Visible   := False;
    //  CancelLink.Visible := False;
      EditBtn.Enabled                := true;
      SaveBtn.Enabled                := false;
      CancelBtn.Enabled              := false;
      LoadLogo.Visible   := False;
    end;
end;

procedure TFlexAccountMainMenuForm.CancelBtnClick(Sender: TObject);
begin
  Button1.Visible := false;
  AcctData.Company.Cancel;
  signatories.cancel;
  DBEdit1.ReadOnly   := True;
  DBEdit2.ReadOnly   := True;
  DBEdit3.ReadOnly   := True;
  DBEdit130.ReadOnly             := TRUE;
  DBEdit68.ReadOnly              := TRUE;
  DBEdit135.ReadOnly             := TRUE;
  DBEdit71.ReadOnly              := TRUE;
  DBEdit132.ReadOnly             := TRUE;
  DBEdit72.ReadOnly              := TRUE;

  DBEdit75.ReadOnly              := TRUE;
  DBEdit74.ReadOnly              := TRUE;
  //EditLink.Visible   := True;
 // SaveLink.Visible   := False;
 // CancelLink.Visible := False;
  EditBtn.Enabled                := true;
  SaveBtn.Enabled                := false;
  CancelBtn.Enabled              := false;
  LoadLogo.Visible   := False;
end;

procedure TFlexAccountMainMenuForm.Label113Click(Sender: TObject);
begin
  NxHeaderPanel17.Left := 40;
  NxHeaderPanel17.Top  := 82;
  NxHeaderPanel17.BringToFront;
  NxHeaderPanel17.Visible := True;

  RqPO.ParamByName('DateFrom').AsDate := NxDatePicker3.Date;
  RqPO.ParamByName('DateTo').AsDate   := NxDatePicker4.Date;
  RqPO.Open;
end;

procedure TFlexAccountMainMenuForm.Label1Click(Sender: TObject);
begin
   NxHeaderPanel9.Left    := 296;
   NxHeaderPanel9.Top     := 252;
   NxHeaderPanel9.Visible := True;
   NxHeaderPanel9.BringToFront;

   AcctData.Payee.ParamByName('Name').Text := '%';
   AcctData.Payee.Open;
   CRDBGrid12.SetFocus;
end;

procedure TFlexAccountMainMenuForm.Label71Click(Sender: TObject);
begin
  EditSupp := 0;
  if (Sender as TNxLinkLabel) = Label71 then EditSupp := 1;
  if (Sender as TNxLinkLabel) = Label72 then EditSupp := 2;
  if (Sender as TNxLinkLabel) = Label83 then EditSupp := 3;
  NxHeaderPanel18.Left  := 385;
  NxHeaderPanel18.Top   := 158;
  NxHeaderPanel18.BringToFront;
  NxHeaderPanel18.Visible := True;
  AcctData.Payee.ParamByName('Name').Text := '%';
  AcctData.Payee.Open;
  CRDBGrid17.SetFocus;
  NxHeaderPanel10.Enabled := False;
end;

procedure TFlexAccountMainMenuForm.Label86Click(Sender: TObject);
begin
   NxHeaderPanel20.Left    := 476;
   NxHeaderPanel20.Top     := 168;
   NxHeaderPanel20.Visible := True;
   NxHeaderPanel20.BringToFront;

   AcctData.Payee.ParamByName('Name').Text := '%';
   AcctData.Payee.Open;
   CRDBGrid18.SetFocus;
end;

procedure TFlexAccountMainMenuForm.LoadLogoClick(Sender: TObject);
begin
   If OpenPictureDialog1.Execute then AcctData.Companylogo.LoadFromFile(OpenPictureDialog1.FileName);
end;

Procedure TFlexAccountMainMenuForm.SearchUserButtonClick(Sender: TObject);
begin
  MyUsers.Close;
  MyUsers.ParamByName('username').Text := '%'+SearchUser.Text+'%';
  MyUsers.Open;

  If MyUsers.IsEmpty then
    begin
      MessageDlg('No users found....', mtInformation, [mbOK], 0);
      MyUsers.Close;
      MyUsers.ParamByName('username').Text := '%';
      MyUsers.Open;
      exit;
    end;
end;

procedure TFlexAccountMainMenuForm.SearchUserEnter(Sender: TObject);
begin
  SearchUser.Text := '';
end;

procedure TFlexAccountMainMenuForm.SaveUserClick(Sender: TObject);
begin
  If UpperCase(MyUsersPassWord.Text) <> UpperCase(EditConfirmPassword.Text) then
    begin
      MessageDlg('Password does not match...', mtError, [mbOK], 0);
      DBEdit5.SetFocus;
      exit;
    end;

  Try
  MyUsers.Post;
  MyUsers.Close;
  MyUsers.Open;
  //MyUsers.RefreshRecord;

  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;

  except
  on E: Exception do
  begin
   MessageDlg('Error...'+E.Message, mtWarning, [mbOK], 0);
   exit;
  end;
  end;
end;

procedure TFlexAccountMainMenuForm.CancelUserClick(Sender: TObject);
begin
  MyUsers.Cancel;
  UserMaintenancePanel.Expanded := False;
  UserMaintenancePanel.Visible  := False;
  UserListPanel.Expanded        := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel1Click(Sender: TObject);
begin
  If OpenPictureDialog1.Execute then
     MyUsersUserPic.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFlexAccountMainMenuForm.AddItemCloseBtnClick(Sender: TObject);
begin
  LedgerEntry.Close;
  Jvdetailpanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.AddLinkClick(Sender: TObject);
begin
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Visible    := True;
  UserMaintenancePanel.Expanded   := True;

  MyUsers.Close;
  MyUsers.Open;
  MyUsers.Append;
  DBEdit4.SetFocus;
end;

procedure TFlexAccountMainMenuForm.Button1Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := true;
end;

procedure TFlexAccountMainMenuForm.EditBtnClick(Sender: TObject);
begin
   Button1.Visible                := true;
   DBEdit1.ReadOnly               := False;
   DBEdit2.ReadOnly               := False;
   DBEdit3.ReadOnly               := False;
   DBEdit130.ReadOnly             := False;
   DBEdit68.ReadOnly              := False;
   DBEdit135.ReadOnly             := False;
   DBEdit71.ReadOnly              := False;
   DBEdit132.ReadOnly             := False;
   DBEdit72.ReadOnly              := False;
   DBEdit98.ReadOnly              := False;
   DBEdit97.ReadOnly              := False;


   DBEdit89.ReadOnly              := False;
   DBEdit88.ReadOnly              := False;
   DBEdit83.ReadOnly              := False;
   DBEdit35.ReadOnly              := False;

   DBEdit18.ReadOnly              := False;
   DBEdit17.ReadOnly              := False;
   DBEdit20.ReadOnly              := False;
   DBEdit19.ReadOnly              := False;
   DBEdit24.ReadOnly              := False;
   DBEdit22.ReadOnly              := False;
   DBEdit28.ReadOnly              := False;
   DBEdit25.ReadOnly              := False;
   DBEdit31.ReadOnly              := False;
   DBEdit30.ReadOnly              := False;
   DBEdit69.ReadOnly              := False;
   DBEdit40.ReadOnly              := False;
   DBEdit81.ReadOnly              := False;
   DBEdit70.ReadOnly              := False;

   DBEdit101.ReadOnly             := False;
   DBEdit102.ReadOnly             := False;

   DBEdit75.ReadOnly              := False;
   DBEdit74.ReadOnly              := False;

   DBEdit33.ReadOnly              := false;
   DBEdit110.ReadOnly             := false;

   DBEdit1.SetFocus;
  // EditLink.Visible               := False;
  // SaveLink.Visible               := True;
  // CancelLink.Visible             := True;
   EditBtn.Enabled                := false;
   SaveBtn.Enabled                := true;
   CancelBtn.Enabled              := true;
   LoadLogo.Visible               := True;
   AcctData.Company.Edit;
   signatories.Edit;
end;

procedure TFlexAccountMainMenuForm.EditButtonClick(Sender: TObject);
begin
  userlistpanel.Expanded          := False;
  UserMaintenancePanel.Expanded   := True;
  UserMaintenancePanel.Visible    := True;
  MyUsers.Edit;
  DBEdit4.SetFocus;
end;

procedure TFlexAccountMainMenuForm.EditConfirmPasswordKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
   begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
     if (Sender as TDBEdit) = VolgaDBEdit1 then DBEdit4.SetFocus;

   end;
end;

procedure TFlexAccountMainMenuForm.DeleteLinkClick(Sender: TObject);
begin
  If MyUsers.IsEmpty then
    begin
      MessageDlg('No records to delete', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Are you sure?', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  MyUsers.Delete;
end;

procedure TFlexAccountMainMenuForm.JVSearchButtonClick(Sender: TObject);
begin
  NxComboBox1CloseUp(sender);
end;

procedure TFlexAccountMainMenuForm.JVSearchChange(Sender: TObject);
begin
  NxComboBox1CloseUp(sender);
end;

procedure TFlexAccountMainMenuForm.JVSearchClick(Sender: TObject);
begin
  JVSearch.SelectAll;
end;

procedure TFlexAccountMainMenuForm.JVEditClick(Sender: TObject);
begin
 checkWoutPO := true;
 CRDBGrid6.Visible:=false;
  if acctdata.requisitionstatus.Text = 'APPROVED' then
    begin
      MessageDlg('Requisition already approved!', mtWarning, [mbOK], 0);
    end
   else
    begin
      NxHeaderPanel14.Caption := 'Edit Requisition';
      NxHeaderPanel14.Left    := 36;
      NxHeaderPanel14.Top     := 95;
      NxHeaderPanel14.Caption :=  'Edit Requisition';
      NxHeaderPanel14.Visible := true;
      NxHeaderPanel14.BringToFront;

      acctdata.Requisition.Edit;
      acctdata.requisitionrvDate.EditMask   := '!99/99/00;1;';
      CRDBGrid2.Enabled                     := false;
      if AcctData.requisitionallowprint.AsBoolean = false then DBCheckBox1.Checked:=false;
    end;
end;

procedure TFlexAccountMainMenuForm.JVPeriodCoveredRClick(Sender: TObject);
begin
  With AcctData do
    begin
      requisition.Close;
      requisition.ParamByName('rv').Text          := '%';
      requisition.ParamByName('APP').Text      := NxComboBox1.Text;
      //CanvassData.ParamByName('id').Text          := UsersIdUsers.Text;
      requisition.ParamByName('datefrom').AsDate  := JVdatefrom.AsDateTime;
      requisition.ParamByName('dateto').AsDate    := JVdateTo.AsDateTime;
      requisition.Open;
    end;

end;

procedure TFlexAccountMainMenuForm.JVAddClick(Sender: TObject);
begin
   UserCanvasser.Close;
   UserCanvasser.Open;
   checkWoutPO := true;

   NxHeaderPanel14.Caption := 'Add Requisition';
   NxHeaderPanel14.Left    := 36;
   NxHeaderPanel14.Top     := 95;
   NxHeaderPanel14.Caption :=  'Add Requisition';
   NxHeaderPanel14.Visible := true;
   NxHeaderPanel14.BringToFront;

   DBEdit73.SetFocus;
   acctdata.requisitionrvDate.EditMask   := '!99/99/00;1;';
   crdbgrid2.Enabled                     := false;

   acctdata.Requisition.Append;
   acctdata.requisitioncanvasser.Text := UserCanvasserUserID.Text;
   acctdata.requisitionrvDate.AsDateTime := Now;
   acctdata.requisitionstatus.Text       := 'PENDING';
   acctdata.requisitionuserid.AsInteger  := AcctData.UsersIdUsers.AsInteger;
   DBCheckBox1.Checked                   := false;
end;

procedure TFlexAccountMainMenuForm.JVDeleteClick(Sender: TObject);
begin


    With AcctData do
      If AcctData.Requisition.IsEmpty then
        begin
          MessageDlg('No records to delete....', mtError, [mbOK], 0);
          exit;

        end else

      If requisitionstatus.Text = 'APPROVED' then
        begin
          MessageBox(0, 'Requisition cannot be deleted!', '', MB_ICONINFORMATION or MB_OK);
        end else
      if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo)
        then
        begin
        exit;
        end else
        begin
            myquery2.SQL.Clear;
            myquery2.SQL.Add('Delete from requisitiondetail where docnumber = :requisition');
            myquery2.ParamByName('requisition').Text   := acctdata.requisitionrvNumber.text;
            MyQuery2.Execute;
            AcctData.Requisition.Delete;
        end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel20Click(Sender: TObject);
begin
  If AcctData.Requisition.IsEmpty then
    begin
      MessageDlg('Requisition Voucher is Empty..', mtError, [mbOK], 0);
      exit;
    end;

  if acctdata.requisitionstatus.Text = 'APPROVED' then begin

  NxLinkLabel25.Visible := false;
  NxLinkLabel26.Visible := false;
  NxLinkLabel50.Visible := false;

  end else begin

  NxLinkLabel25.Visible := true;
  NxLinkLabel26.Visible := true;
  NxLinkLabel50.Visible := true;

  end;
  requisitiondetail.close;
  requisitiondetail.ParamByName('idrequisition').Text := acctdata.requisitionidrequisition.text;
  RequisitionDetail.Open;

  JVDetailPanel.Left    := 112;
  JVDetailPanel.Top     := 104;
  JVDetailPanel.Visible := True;
  JVDetailPanel.BringToFront;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel6Click(Sender: TObject);
begin
  NxHeaderPanel8.Left := 216;
  NxHeaderPanel8.Left := 186;
  NxHeaderPanel8.BringToFront;
  NxHeaderPanel8.Visible := True;

  acctdata.POPODate.EditMask := '!99/99/00;1;';
  AcctData.PO.Edit;
  DBEdit34.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel21Click(Sender: TObject);
begin
 RegisterJournal.Close;
 RegisterJournal.MasterSource := AcctData.dsRequisition;
 RegisterJournal.MasterFields := 'rvnumber';
 RegisterJournal.DetailFields := 'documentnumber';
 RegisterJournal.Open;

 JVQrPeriod.Caption  := 'Period Covered :'+DatetoStr(StartOfTheMonth(JVDateFrom.AsDateTime)) + ' - ' + DatetoStr(EndOfTheMonth(JVDateTo.AsDateTime));

 QuickRep7.PreviewHeight := Screen.Height;
 QuickRep7.PreviewWidth  := Screen.Width;
 QuickRep7.Preview;
 RegisterJournal.Close;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel22Click(Sender: TObject);
var
tmpFilterPO:TMyQuery;
begin

  tmpFilterPO:=TMyQuery.Create(self);
  tmpFilterPO.Connection:=AcctData.myconnection1;

  tmpFilterPO.Close;
  tmpFilterPO.SQL.Clear;
  tmpFilterPO.sql.add('select * from POdetail');
  tmpFilterPO.SQL.Add('where idrequisitiondetail like '+RQDetailPOidrequisitiondetail.Text+'');
  tmpFilterPO.Open;

  if tmpFilterPO.IsEmpty then begin
   try
      if RadioGroup1.ItemIndex = 0 then
        begin
            case RadioGroup2.ItemIndex of
                0 : begin
                     TransferPO.MacroByName('Supplier1').Active         := True;
                     TransferPO.MacroByName('Supplier2').Active         := False;
                     TransferPO.MacroByName('Supplier3').Active         := False;
                     TransferPO.MacroByName('PerItem').Active           := False;
                     TransferPO.MacroByName('PerRV').Active             := True;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisition').Text       := RqPOidrequisition.Text;
                  end;

                1 : begin
                     TransferPO.MacroByName('Supplier1').Active   := False;
                     TransferPO.MacroByName('Supplier2').Active   := True;
                     TransferPO.MacroByName('Supplier3').Active   := False;
                     TransferPO.MacroByName('PerItem').Active     := False;
                     TransferPO.MacroByName('PerRV').Active       := True;
                     TransferPO.ParamByName('idPO').Text          := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisition').Text := RqPOidrequisition.Text;
                  end;

              2 : begin
                     TransferPO.MacroByName('Supplier1').Active   := False;
                     TransferPO.MacroByName('Supplier2').Active   := False;
                     TransferPO.MacroByName('Supplier3').Active   := True;
                     TransferPO.MacroByName('PerItem').Active     := False;
                     TransferPO.MacroByName('PerRV').Active       := True;
                     TransferPO.ParamByName('idPO').Text          := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisition').Text := RqPOidrequisition.Text;
                  end;
            end;
        end;

      if RadioGroup1.ItemIndex = 1 then
        begin
           case RadioGroup2.ItemIndex of
              0 : begin
                     TransferPO.MacroByName('Supplier1').Active         := True;
                     TransferPO.MacroByName('Supplier2').Active         := False;
                     TransferPO.MacroByName('Supplier3').Active         := False;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                  end;

              1 : begin
                     TransferPO.MacroByName('Supplier1').Active         := False;
                     TransferPO.MacroByName('Supplier2').Active         := True;
                     TransferPO.MacroByName('Supplier3').Active         := False;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                  end;

              2 : begin
                     TransferPO.MacroByName('Supplier1').Active         := False;
                     TransferPO.MacroByName('Supplier2').Active         := False;
                     TransferPO.MacroByName('Supplier3').Active         := True;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                 end;
            end;
           { case RadioGroup2.ItemIndex of
              0 : begin
                     TransferPO.MacroByName('Supplier1').Active         := True;
                     TransferPO.MacroByName('Supplier2').Active         := False;
                     TransferPO.MacroByName('Supplier3').Active         := False;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                  end;

              1 : begin
                     TransferPO.MacroByName('Supplier1').Active         := False;
                     TransferPO.MacroByName('Supplier2').Active         := True;
                     TransferPO.MacroByName('Supplier3').Active         := False;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                  end;

              2 : begin
                     TransferPO.MacroByName('Supplier1').Active         := False;
                     TransferPO.MacroByName('Supplier2').Active         := False;
                     TransferPO.MacroByName('Supplier3').Active         := True;
                     TransferPO.MacroByName('PerItem').Active           := True;
                     TransferPO.MacroByName('PerRV').Active             := False;
                     TransferPO.ParamByName('idPO').Text                := AcctData.POidPO.Text;
                     TransferPO.ParamByName('idRequisitionDetail').Text := RQDetailPOidrequisitiondetail.Text;
                 end;
            end;  }
        end;

        TransferPO.Execute;
        AcctData.PODetail.Refresh;
    except
        exit;
    end;
   end else begin
      MessageDlg('Selected item was already exist...', mtError, [mbOK],0);
 end;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel23Click(Sender: TObject);
begin
  AcctData.PODetail.Close;
  NxHeaderPanel16.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel24Click(Sender: TObject);
begin
  NxHeaderPanel17.Visible := False;
  RQDetailPO.Close;
  RQPo.Close;
end;

procedure TFlexAccountMainMenuForm.MaterialBtnClick(Sender: TObject);
begin
  TmpReqstnRecomndRpt:='MATERIALS';
  QRLabel141.Top  :=  81;
  QRLabel141.Left :=  525;
  QRDBText19.Top  :=  80;
  QRDBText19.Left :=  565;
  QRLabel11.Enabled:=false;
  QRDBText19.Enabled:=true;
  QRLabel141.Enabled:=true;

  //QRLabel177.Left:=166;
  //QRLabel177.Top:=160;
  //QRDBText181.Left:=169;
  //QRDBText181.Top:=203;
  //QRShape78.Left:=163;
  //QRShape78.Top:=219;
  //QRDBText16.Left:=170;
  //QRDBText16.Top:=228;

  QRLabel180.Caption:='Prepared By:';
  QRDBText158.DataSet:= AcctData.Users;
  QRDBText161.DataSet :=AcctData.Users;
  QRDBText158.DataField:= 'UserID';
  QRDBText161.DataField:='Position';

  QRLabel177.Caption:='Requested By:';
  QRDBText16.DataSet:= qrRequisition;
  QRDBText181.DataSet:= qrRequisition;
  QRDBText16.DataField:='Pos';
  QRDBText181.DataField:='requester';

  QRLabel178.Enabled:=true;
  QRDBText80.Enabled:=true;
  QRShape79.Enabled:=true;
  QRDBText81.Enabled:=true;

  QRDBText82.DataField    := 'approvedname';
  QRDBText201.dataField   := 'approvedpos';

  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'REQUISITION';
  isoQuery.Open;

  RequisitionPrvwRpt();
end;

procedure TFlexAccountMainMenuForm.MRTDeleteDetailClick(Sender: TObject);
begin
  if (MessageDlg('Confirm Delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  LedgerEntry.Delete;
end;

procedure TFlexAccountMainMenuForm.SMSearchButtonClick(Sender: TObject);
begin
  With AcctData do
    begin
      ScheduleMaster.Close;
      ScheduleMaster.ParamByName('description').Text := '%'+SMSearch.text+'%';
      ScheduleMaster.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.SubmitBtnClick(Sender: TObject);
begin
  with AcctData do begin
    requisition.Edit;
    requisitionReadyAlloct.AsInteger := 1;
    requisition.Post;
    requisition.RefreshRecord;
    MessageDlg('Your request was successfully submitted!..',mtInformation,[mbOK],0);
  end;
end;

procedure TFlexAccountMainMenuForm.smaddClick(Sender: TObject);
begin
  With AcctData do
    begin
      smpanel.Left     := 80;
      smpanel.Top      := 104;
      smpanel.Visible  := True;
      smpanel.Caption  := 'Add a Schedule';

      smadd.Visible    := False;
      smedit.Visible   := False;
      smdelete.Visible := False;

      ScheduleMaster.Append;
      DBEdit111.SetFocus;
    end;
end;

procedure TFlexAccountMainMenuForm.smeditClick(Sender: TObject);
begin
  With AcctData do
    begin
      smpanel.Left     := 80;
      smpanel.Top      := 104;
      smpanel.Visible  := True;
      smpanel.Caption  := 'Edit a Schedule';

      smadd.Visible    := False;
      smedit.Visible   := False;
      smdelete.Visible := False;

      ScheduleMaster.Edit;
      DBEdit111.SetFocus;
    end;

end;

procedure TFlexAccountMainMenuForm.smdeleteClick(Sender: TObject);
begin
  If AcctData.ScheduleMaster.IsEmpty then
    begin
      MessageDlg('No records to delete....', mtError, [mbOK], 0);
      exit;
    end;

  if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Add('Delete from scheduledetail where idschedulemaster = :idschedulemaster');
  MyQuery1.ParamByName('idschedulemaster').Text := AcctData.ScheduleMasteridScheduleMaster.Text;
  MyQuery1.Execute;

  AcctData.ScheduleMaster.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel78Click(Sender: TObject);
begin
  AcctData.ScheduleMaster.Post;
  smpanel.Visible  := False;
  smadd.Visible    := True;
  smedit.Visible   := True;
  smdelete.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel79Click(Sender: TObject);
begin
  AcctData.ScheduleMaster.cancel;
  smpanel.Visible  := False;
  smadd.Visible    := True;
  smedit.Visible   := True;
  smdelete.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel7Click(Sender: TObject);
Var CancelPO : TMyQuery;
begin
   if (MessageDlg('Cancel PO.. This procedure cannot be rolled back...'+#13+#10+
   'Please confirm', mtConfirmation, [mbYes, mbCancel], 0) = mrCancel) then exit;

   CancelPO := TMyQuery.Create(Self);
   CancelPO.Connection := AcctData.myconnection1;
   CancelPO.SQL.Clear;

   CancelPO.SQL.Add('delete from zanecobudget.journal ');
   CancelPO.SQL.Add('where journal.documentnumber  = :docnum');
   CancelPO.ParamByName('docnum').Text := AcctData.POPONumber.Text;
   CancelPO.Execute;

   CancelPO.SQL.Clear;

   CancelPO.SQL.Add('delete from podetail where idpo = :idpo');
   CancelPO.ParamByName('idpo').Text := AcctData.POidPO.Text;
   CancelPO.Execute;

   AcctData.PO.Edit;
   AcctData.POPCode.Text := '';
   AcctData.POName.Text  := 'CANCELLED '+AcctData.UsersUserName.Text+' '+DateToStr(Now)+TimeToStr(Now);;
   AcctData.PO.Post;

   MessageDlg('Cancel done...', mtInformation, [mbOK], 0);

   FreeAndNil(CancelPO);
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel75Click(Sender: TObject);
begin
  smdetaileditpanel.Left    := 32;
  smdetaileditpanel.Top     := 83;
  smdetaileditpanel.Visible := True;
  acctdata.ScheduleDetail.Append;
  DBEdit115.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxButton10Click(Sender: TObject);
begin
  NxHeaderPanel23.Visible := false;
  NxHeaderPanel22.Top := 185;
  NxHeaderPanel22.Left:= 155;
  NxHeaderPanel22.BringToFront;
  NxHeaderPanel22.Visible := true;
  NxEdit3.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxButton11Click(Sender: TObject);
var
  EmptyPOTmp : TMyQuery;
begin
    EmptyPOTmp :=  TMyQuery.Create(Self);
    EmptyPOTmp.Connection := AcctData.myconnection1;
    EmptyPOTmp.SQL.clear;

    EmptyPOTmp.SQL.Add('Update PO set EmptyPO = 1 ');
    EmptyPOTmp.SQL.Add('Where idPO = '+quotedstr(AcctData.POidPO.Text)+' and ');
    EmptyPOTmp.SQL.Add('EmptyPO = :EmptyPO');
    EmptyPOTmp.ParamByName('EmptyPO').AsInteger := 0;
    EmptyPOTmp.Execute;
    MessageDlg('PO w/out payee was successfuly submitted!',mtInformation,[mbOK],0);
end;

procedure TFlexAccountMainMenuForm.NxButton12Click(Sender: TObject);
begin
  MyChart.Close;
  MyChart.ParamByName('accountname').Text := '%'+DBEdit115.Text+'%';
  MyChart.Open;
  NextDBGrid27.Left    := 166;
  NextDBGrid27.Top     := 132;
  NextDBGrid27.Visible := True;
  NextDBGrid27.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxButton13Click(Sender: TObject);
begin
  AcctData.requisition.Post;
  AcctData.requisition.Refresh;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid27DblClick(Sender: TObject);
begin
  acctdata.ScheduleDetailaccountcode.Text := MyChartaccountcode.Text;
  acctdata.ScheduleDetailaccountname.Text := MyChartaccountname.Text;
  NextDBGrid27.Visible        := False;
  MyChart.Close;
  DBEdit112.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NextDBGrid27Exit(Sender: TObject);
begin
 NextDBGrid27.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel77Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Post;
  smdetaileditpanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel82Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Post;
  smdetaileditpanel.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel8Click(Sender: TObject);
Var PrevCount : Integer;
begin
  if AcctData.POPONumber.Text = '' then
    begin
          poc.open;
          if poc.IsEmpty then
           begin
            poc.Append;
            pocMY.Text           := FormatDateTime('yymm',now);
            pocCounter.AsInteger := 1;
           end
           else
           begin
             if pocMY.Text <>  FormatDateTime('yymm',now) then
              begin
                poc.Append;
                pocMY.Text           := FormatDateTime('yymm',now);
                pocCounter.AsInteger := 1;
              end
              else
              begin
                PrevCount            := pocCounter.AsInteger;
                poc.Append;
                pocMY.Text           := FormatDateTime('yymm',now);
                pocCounter.AsInteger := PrevCount + 1;
              end;
           end;
           poc.Post;

           acctdata.POPONumber.Text  := 'PO' + pocMY.Text + '-' + JustStr(pocCounter.Text,'0',4,1);
           AcctData.POEmptyPO.AsInteger := 0;
    end;

   AcctData.PO.Post;
   acctdata.PO.RefreshRecord;

   POC.Close;
   NxHeaderPanel8.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel9Click(Sender: TObject);
begin
  AcctData.PO.Cancel;
  NxHeaderPanel8.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel76Click(Sender: TObject);
begin
  if (MessageDlg('Confirm Delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  AcctData.ScheduleDetail.Delete;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel74Click(Sender: TObject);
begin
 smdetailpanel.Visible := false;
 AcctData.ScheduleDetail.Close;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel80Click(Sender: TObject);
begin
  acctdata.ScheduleDetail.Open;
  smdetailpanel.Left    := 16;
  smdetailpanel.top     := 32;
  smdetailpanel.Visible := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel81Click(Sender: TObject);
begin
  printschedule.Close;
  printschedule.ParamByName('idschedulemaster').Text := acctdata.ScheduleMasteridScheduleMaster.Text;
  printschedule.Open;
  ScheduleTitle.Caption := AcctData.ScheduleMasterDescription.Text;
  QuickRep13.PreviewHeight := Screen.Height;
  QuickRep13.PreviewWidth  := Screen.Width;
  QuickRep13.Preview;
  printschedule.close;
end;

procedure TFlexAccountMainMenuForm.printscheduleCalcFields(
  DataSet: TDataSet);
begin
  printschedulebalance.AsCurrency := printscheduleallocamount.AsCurrency - printschedulebalasof.AsCurrency;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel10Click(Sender: TObject);
begin
   NxHeaderPanel9.Visible := False;
   DBEdit34.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel11Click(Sender: TObject);
begin
  AcctData.POPCode.Text  := AcctData.PayeePCode.Text;
  AcctData.POName.Text   := AcctData.PayeeName.Text;
  NxHeaderPanel9.Visible :=False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel12Click(Sender: TObject);
begin
  NxHeaderPanel16.Left := 23;
  NxHeaderPanel16.Top  := 81;
  NxHeaderPanel16.BringToFront;
  NxHeaderPanel16.Visible := True;
  AcctData.PODetail.Open;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel13Click(Sender: TObject);
var
  J:TMyquery;
  R:TMyquery;
begin

  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'PURCHASE ORDER';
  isoQuery.Open;

  J := TMyQuery.Create(self);
  J.Connection := AcctData.MyConnection1;
  J.Close;
  J.SQL.Clear;
  J.SQL.Add('select idjournal from journal where documentnumber = :docnum');
  j.ParamByName('docnum').Text := AcctData.POPONumber.Text;
  J.Open;

  POfilterPrnt.Close;
  POfilterPrnt.ParamByName('rvnumber').Text := AcctData.PODetaildocnumber.text;
  POfilterPrnt.Open;

  with acctdata do begin
      poRvPurpose.Close;
      poRvPurpose.ParamByName('idrequisitiondetail').Text := PODetailidRequisitionDetail.Text;
      poRvPurpose.Open;
  end;

  poRvnoQ.Close;
  poRvnoQ.ParamByName('idpo').Text :=  acctdata.PODetailidPO.Text;
  poRvnoQ.Open;

  if  (POfilterPrntAllowprintBudget.Value = true) or not J.IsEmpty and (POfilterPrntAllowprintBudget.Value = false) then   begin
        Signatories.Open;
        quickrep8.Preview;
    end else if J.IsEmpty and (POfilterPrntAllowprintBudget.Value = false) then begin
        messagedlg('Purchase order not yet allocated!',mtError,[mbOK],0);
  end;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel14Click(Sender: TObject);
begin
  NxHeaderPanel21.Left:=339;
  NxHeaderPanel21.Top:=243;
  NxHeaderPanel21.BringToFront;
  NxHeaderPanel21.Visible:=true;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel15Click(Sender: TObject);

begin
  //approved
  if emptyPOtmp = 'disapproved' then
    begin
      MessageDlg('Empty Purchase Order was stricty disabled by the admin....',mtWarning,[mbOK],0);
      exit;
    end;

  NxHeaderPanel23.Top := 105;
  NxHeaderPanel23.Left:= 155;
  NxHeaderPanel23.BringToFront;
  NxHeaderPanel23.Visible := true;

  if AcctData.POEmptyPO.Text = '2' then
    begin
        Label128.Caption := 'Authorization was already approved!';
        Label127.Visible := false;
      end else begin
        Label128.Caption := 'Authorization is not approved!';
        Label127.Visible := true;
    end;
end;

procedure TFlexAccountMainMenuForm.RefreshRecordClick(Sender: TObject);
begin
acctdata.requisition.Refresh;
end;

procedure TFlexAccountMainMenuForm.DBCheckBox1Click(Sender: TObject);
begin
  if (DBCheckBox1.Checked) and (checkWoutPO = true) then
  begin
    if (MessageDlg('Without PO request?', mtWarning, [mbYes, mbNo], 0) = mrNo) then
    begin
      DBCheckBox1.Checked := false;
      exit;
    end;
    GroupBox8.Enabled := True
  end else begin
     GroupBox8.Enabled := False;
  end;
end;

procedure TFlexAccountMainMenuForm.DBEdit106KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      if (Sender as TDBEdit) = DBEdit108 then NxLinkLabel37.SetFocus;
    end;
end;

procedure TFlexAccountMainMenuForm.DBEdit11KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      if (Sender as TAdvDBDateTimePicker) = DBEdit105 then DBEdit11.SetFocus;
    end;
end;

procedure TFlexAccountMainMenuForm.DBEdit21KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
  dbedit29.SetFocus;
end;
end;

procedure TFlexAccountMainMenuForm.DBEdit29KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key=#13  then begin
    NxLinkLabel51.SetFocus;
  end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel17Click(Sender: TObject);
begin

qrcanvass.ParamByName('DN').Text     := acctdata.CanvassDatarvnumber.Text;
qrcanvass.Open;
signatories.Open;


 QuickRep4.PreviewWidth   := screen.Width;
 QuickRep4.Previewheight  := screen.Height;
 quickrep4.Preview;
 signatories.close;
 qrcanvass.close;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel18Click(Sender: TObject);
begin
  With AcctData do
    begin
      CanvassData.Close;
      CanvassData.ParamByName('rv').Text          := '%';
      CanvassData.ParamByName('status').Text      := NxComboBoxCanvas.Text;
      //CanvassData.ParamByName('id').Text          := UsersIdUsers.Text;
      CanvassData.ParamByName('datefrom').AsDate  := NxDatePicker1.AsDateTime;
      CanvassData.ParamByName('dateto').AsDate    := NxDatePicker2.AsDateTime;
      CanvassData.Open;
    end;

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel19Click(Sender: TObject);
begin
  AcctData.PODetail.Delete;
end;

procedure TFlexAccountMainMenuForm.NxButtonEdit1ButtonClick(
  Sender: TObject);
begin
  With AcctData do
    begin
      CanvassData.Close;
      CanvassData.ParamByName('Rv').Text := '%'+NxButtonEdit1.text+'%';
      CanvassData.ParamByName('datefrom').AsDate  := NxDatePicker1.Date;
      CanvassData.ParamByName('dateto').AsDate    := NxDatePicker2.date;
      CanvassData.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.NxButtonEdit1Click(Sender: TObject);
begin
  NxButtonEdit1.SelectAll;
end;

procedure TFlexAccountMainMenuForm.NxButtonEdit2ButtonClick(Sender: TObject);
begin
  if NxButtonEdit2.Text = 'Search Name or PO Number' then NxButtonEdit2.Text := '';
  With AcctData do
    begin
      PO.Close;
      PO.ParamByName('Name').text       := '%' + NxButtonEdit2.Text + '%';
      PO.ParamByName('DateFrom').AsDate := NxDatePicker3.Date;
      PO.ParamByName('DateTo').AsDate   := NxDatePicker4.Date;
      PO.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.NxButtonEdit2Change(Sender: TObject);
begin
  if NxButtonEdit2.Text = 'Search Name or PO Number' then NxButtonEdit2.Text := '';
  With AcctData do
    begin
      PO.Close;
      PO.ParamByName('Name').text       := '%' + NxButtonEdit2.Text + '%';
      PO.ParamByName('DateFrom').AsDate := NxDatePicker3.Date;
      PO.ParamByName('DateTo').AsDate   := NxDatePicker4.Date;
      PO.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.NxButtonEdit2Click(Sender: TObject);
begin
   NxButtonEdit2.SelectAll;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel16Click(Sender: TObject);
begin
  with AcctData do begin
    if (UsersUserName.Text = 'JOVENAL') or (UsersUserName.Text = 'jovenal')  then  begin
        NxButton7.Enabled:=true;
      end else begin
        NxButton7.Enabled:=false;
    end;
  end;

  nxheaderpanel7.Visible := true;
  nxheaderpanel7.Left := 80;
  nxheaderpanel7.Top := 120;
  NxHeaderPanel7.Width := 566;
  requisitiondetail.close;
  requisitiondetail.ParamByName('idrequisition').Text :=  AcctData.CanvassDataidrequisition.Text;
  RequisitionDetail.Open;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel39Click(Sender: TObject);
begin
  RequisitionDetail.Cancel;
  NxHeaderPanel19.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel35Click(Sender: TObject);
begin
   LedgerEntry.Close;
   nxheaderpanel7.Visible := False;
   crdbgrid3.Enabled := true;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel36Click(Sender: TObject);
begin
  CanvasSlctPayee();
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel37Click(Sender: TObject);
begin
  RequisitionDetailrdamount.AsCurrency   := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost.AsCurrency;
  RequisitionDetailrdamount2.AsCurrency  := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost2.AsCurrency;
  RequisitionDetailrdamount3.AsCurrency  := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost3.AsCurrency;
  RequisitionDetail.Post;
  NxHeaderPanel19.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel37Enter(Sender: TObject);
begin
  RequisitionDetailrdamount.AsCurrency   := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost.AsCurrency;
  RequisitionDetailrdamount2.AsCurrency  := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost2.AsCurrency;
  RequisitionDetailrdamount3.AsCurrency  := RequisitionDetailrdqty.AsFloat * RequisitionDetailrdcost3.AsCurrency;
  RequisitionDetail.Post;
  NxHeaderPanel19.Visible := False;
  messagedlg('Item cost saved!.',mtInformation,[mbOK],0);

end;

procedure TFlexAccountMainMenuForm.NxLinkLabel38Click(Sender: TObject);
begin
  NxHeaderPanel20.Visible := False;
  AcctData.Payee.Close;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel40Click(Sender: TObject);
begin
  NxHeaderPanel19.Left   := 319;
  NxHeaderPanel19.Top    := 213;
  NxHeaderPanel19.BringToFront;
  NxHeaderPanel19.Visible := True;
  RequisitionDetail.Edit;
  DBEdit106.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel42Click(Sender: TObject);
begin
   LedgerEntry.Close;
   nxheaderpanel6.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel43Click(Sender: TObject);
begin
  AcctData.requisitionrvPCode.Text  := AcctData.PayeePCode.Text;
  AcctData.requisitionrvName.Text   := AcctData.PayeeName.Text;
  NxHeaderPanel20.Visible :=False;
  AcctData.Payee.Close;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel44Click(Sender: TObject);
begin
 NxHeaderPanel21.Visible:=false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel41Click(Sender: TObject);
begin
  NxHeaderPanel10.Left    := 18;
  NxHeaderPanel10.Top     := 158;
  NxHeaderPanel10.Visible := True;
  AcctData.CanvassData.Edit;
  RequisitionDetail.Edit;
  DBEdit11.SetFocus;
  RequisitionDetailbidopen.AsDateTime := Now;
  RequisitionDetailbidyear.AsDateTime := Now;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel45Click(Sender: TObject);
begin
  AcctData.CanvassData.Post;
  RequisitionDetail.Post;
  NxHeaderPanel10.Visible := False;
  MessageDlg('Suppliers Saved!', mtWarning, [mbOK], 0);
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel46Click(Sender: TObject);
begin
  AcctData.CanvassData.Cancel;
  NxHeaderPanel10.Visible := False;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel30Click(Sender: TObject);
begin
  NxHeaderPanel22.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel31Click(Sender: TObject);
begin
  NxHeaderPanel23.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel32Click(Sender: TObject);
begin
  NxHeaderPanel1.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel33Click(Sender: TObject);
begin
  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'ABSTRACT';
  isoQuery.Open;

  requisitiondetail.close;
  requisitiondetail.ParamByName('idrequisition').Text    := acctdata.CanvassDataidrequisition.Text;
  requisitiondetail.Open;
  NxHeaderPanel6.Visible                                 := true;
  NxHeaderPanel6.left                                    := 0;
  NxHeaderPanel6.Top                                     := 0;
  NxHeaderPanel6.BringToFront;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel34Click(Sender: TObject);
begin
  AcctData.Payee.Close;
  NxHeaderPanel18.Visible := False;
  NxHeaderPanel10.Enabled := True;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel27Click(Sender: TObject);
begin
   CanvassPanel.Left     := 159;
   CanvassPanel.Top      := 178;
   canvasspanel.Visible  := True;
   canvasspanel.Caption  := 'Edit Canvass';

   acctdata.CanvassData.Edit;
   acctdata.CanvassDatarvDate.EditMask   := '!99/99/00;1;';
   DBEdit23.SetFocus;
   crdbgrid3.Enabled                      := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel47Click(Sender: TObject);
begin

qrpo.ParamByName('idrequisition').Text    := acctdata.CanvassDataidrequisition.Text;
qrpo.open;

Signatories.Open;
BidOpenDate.Caption := FormatDateTime('MM/DD/YYYY',Now);//RequisitionDetailbidopen.AsDateTime
BidOpenTime.Caption := FormatDateTime('hh:mm',Now);
BidOpenYear.Caption := FormatDateTime('MM/DD/YYYY',Now); //RequisitionDetailbidyear

QuickRep9.PreviewWidth   := screen.Width;
quickrep9.PreviewHeight  := screen.Height;
quickrep9.Preview;
signatories.close;
qrpo.Close;
end;

procedure TFlexAccountMainMenuForm.qrcanvassrvdescriptionGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
Text := Copy(qrcanvassrvdescription.AsString, 1, 100);
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel49Click(Sender: TObject);
begin
 If not Assigned(InvReportsDown) then
      InvReportsDown := InvReportsDown.Create(Application);
      InvReportsDown.Show;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel4Click(Sender: TObject);
begin
  With AcctData do
  begin
      PO.Close;
      PO.ParamByName('Name').text       := '%';
      PO.ParamByName('DateFrom').AsDate := NxDatePicker3.Date;
      PO.ParamByName('DateTo').AsDate   := NxDatePicker4.Date;
      PO.Open;
  end;
end;

procedure TFlexAccountMainMenuForm.DBEdit37KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
dbedit54.SetFocus;
end;

procedure TFlexAccountMainMenuForm.DBEdit54KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
dbedit41.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel51Click(Sender: TObject);
begin
  AddItemRqt();
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel51Enter(Sender: TObject);
begin
 AddItemRqt();
end;
procedure TFlexAccountMainMenuForm.NxLinkLabel52Click(Sender: TObject);
begin
  requisitiondetail.Cancel;
  nxheaderpanel12.Visible           := False;
end;

procedure tflexaccountMainMenuForm.DBEdit32KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
dbedit36.SetFocus;
end;
end;

procedure TFlexAccountMainMenuForm.DBEdit36KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
dbedit21.SetFocus;
end;
end;

procedure TFlexAccountMainMenuForm.DBEdit33KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
NxLinkLabel51Click(sender);
end;
end;

procedure TFlexAccountMainMenuForm.DBEdit34KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
      if (Sender as TAdvDBDateTimePicker)  = DBEdit49 then DBEdit34.SetFocus;
    end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel25Click(Sender: TObject);
begin
  nxheaderpanel12.Caption := 'Add Items';
  nxheaderPanel12.Left    := 32;
  nxheaderPanel12.Top     := 160;
  nxheaderPanel12.Visible := True;
  nxheaderPanel12.BringToFront;
  requisitiondetail.Append;
  dbedit21.Text          := '0';
  dbedit29.text          := '0';
  DBEdit32.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel26Click(Sender: TObject);
begin
  nxheaderpanel12.Caption := 'Edit Items';
  nxheaderPanel12.Left    := 32;
  nxheaderPanel12.Top     := 160;
  nxheaderPanel12.Visible := True;
  nxheaderPanel12.BringToFront;
  requisitiondetail.edit;
  DBEdit32.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel50Click(Sender: TObject);
begin

 if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;
  requisitiondetail.Delete;

    myquery1.SQL.Clear;
    myquery1.sql.Add('update requisition set amount = (select sum(ifnull(amount,0)) from requisitiondetail where docnumber = ' + quotedstr(acctdata.requisitionrvnumber.text) + ' ) where rvnumber = ' + quotedstr(acctdata.requisitionrvnumber.text));
    myquery1.Execute;
    requisitiondetail.Refresh;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel28Click(Sender: TObject);
begin

    With AcctData do
      If AcctData.CanvassData.IsEmpty then
        begin
          MessageDlg('No records to delete....', mtError, [mbOK], 0);
          exit;

        end;

       if (MessageDlg('Confirm delete', mtConfirmation, [mbYes, mbNo], 0) = mrNo) then exit;

            myquery2.SQL.Clear;
            myquery2.SQL.Add('Delete from requisitiondetail where docnumber = :requisition');
            myquery2.ParamByName('requisition').Text   := acctdata.CanvassDatarvnumber.text;
            MyQuery2.Execute;
            AcctData.CanvassData.Delete;

end;

procedure TFlexAccountMainMenuForm.CanvassCancelBtnClick(Sender: TObject);
begin
  AcctData.CanvassData.Cancel;
  CanvassPanel.Visible := False;
  crdbgrid3.Enabled    := True;
end;

procedure TFlexAccountMainMenuForm.CanvassPanelEnter(Sender: TObject);
begin
acctdata.payee.close;
acctdata.payee.ParamByName('name').Text := '%';
acctdata.Payee.open;
end;

procedure TFlexAccountMainMenuForm.CanvassSaveBtnClick(Sender: TObject);
begin
  AcctData.CanvassData.Post;
  acctdata.canvassdata.edit;
  CanvassPanel.Visible := False;
  crdbgrid3.Enabled    := true;
end;

procedure TFlexAccountMainMenuForm.NxButton4Click(Sender: TObject);
begin

  Acounter.Open;

     if (acctdata.requisitionrpo.IsNull) or (acctdata.requisitionrpo.Text = '') then
     begin
       acctdata.requisition.Edit;
       if acctdata.UsersArea.Text = 'DMO' then
        begin
           acctdata.requisitionrpo.Text := 'DPO#-' + AcounterDPO.text;
           acctdata.requisitionPODate.AsDateTime := now;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set DPO = DPO + 1');
           acounterupdate.execute;
        end;
      if acctdata.UsersArea.Text = 'PAO' then
        begin
           acctdata.requisitionrpo.Text :='PPO#-' + AcounterPPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set PPO = PPO + 1');
           acounterupdate.execute;
        end;
      if acctdata.UsersArea.Text = 'SAO' then
       begin
           acctdata.requisitionrpo.Text := 'SPO#-' + AcounterSPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SPO = SPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'LAO' then
       begin
           acctdata.requisitionrpo.Text := 'LPO#-' + AcounterLPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set LPO = LPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SHOP1' then
       begin
           acctdata.requisitionrpo.Text := 'SDPO#-' + AcounterShDPO1.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SDPO = SHDPO1 + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SHOP2' then
       begin
           acctdata.requisitionrpo.Text := 'S2DPO#-' + AcounterSHDPO2.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SPPO = SHDPO2 + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'PAOSHOP' then
       begin
           acctdata.requisitionrpo.Text := 'SHPPO#-' + AcounterSHPPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SHPPO = SHPPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SAOSHOP' then
       begin
           acctdata.requisitionrpo.Text := 'SHSPO#-' + AcounterSHSPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SHSPO = SHSPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'LAOSHOP' then
       begin
           acctdata.requisitionrpo.Text := 'SHLPO#-' + AcounterSHLPO.text;
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set SHLPO = SHLPO + 1');
           acounterupdate.execute;
       end;
    end;

  nxheaderpanel13.Visible              := false;

  if acctdata.requisitionamount.AsFloat > 5000 then
   begin
    qrcanvass.close;
    qrcanvass.ParamByName('DN').Text     := checker;
    qrcanvass.Open;
    signatories.Open;

   { if qrcanvass.RecordCount > 10 then
     begin
      qrband30.Enabled := true;
      qrband20.enabled := false;
     end
    else
     begin
      qrband30.Enabled := false;
      qrband20.enabled := true;
     end;     }
       qrlabel157.Caption := nxedit1.Text;
       quickrep8.Preview;
     end
     else
     begin

       qrcanvass.close;
       qrcanvass.ParamByName('DN').Text     := checker;
       qrcanvass.Open;
       signatories.Open;


       quickrep10.Preview;
     end;
  signatories.close;
  Acounter.Close;
end;

procedure TFlexAccountMainMenuForm.NxButton5Click(Sender: TObject);
begin
nxheaderpanel13.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxButton6Click(Sender: TObject);
var
  rptFooter :TfrxPageFooter;
begin
  qrcanvass.close;
  qrcanvass.ParamByName('DN').Text     := acctdata.CanvassDatarvnumber.Text;
  qrcanvass.Open;
  signatories.Open;

  rptFooter :=  canvasReport.FindComponent('PageFooter1') as TfrxPageFooter;

  if qrcanvass.RecordCount <= 14 then
    rptFooter.PrintOnFirstPage := true
  else
    rptFooter.PrintOnFirstPage := false;

  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'CANVASS';
  isoQuery.Open;

  canvasReport.ShowReport;
end;

procedure TFlexAccountMainMenuForm.NxButton7Click(Sender: TObject);
begin
  NxLinkLabel35.Left := 851;
  NxLinkLabel35.Top := 6;
  NxHeaderPanel7.Width := 912;
  requisitionDetail.Edit;
end;

procedure TFlexAccountMainMenuForm.NxButton8Click(Sender: TObject);
begin
  requisitionDetail.Post;
  NxLinkLabel35.Left := 508;
  NxLinkLabel35.Top := 6;
  NxHeaderPanel7.Width := 566;
end;

procedure TFlexAccountMainMenuForm.NxButton9Click(Sender: TObject);
begin
  requisitionDetail.Cancel;
  NxLinkLabel35.Left := 508;
  NxLinkLabel35.Top := 6;
  NxHeaderPanel7.Width := 566;
end;

procedure TFlexAccountMainMenuForm.DBEdit73KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      Perform(CM_DIALOGKEY,VK_TAB,0);
      Key := #0;
    end;
end;

procedure TFlexAccountMainMenuForm.DBEdit77Change(Sender: TObject);
begin
  CRDBGrid6.Top:=   77;
  CRDBGrid6.Left:=  96;
  CRDBGrid6.Visible:=true;

  Requester.close;
  Requester.ParamByName('Ffirstname').Text     :=   '%'+ DBEdit77.Text +'%';
  Requester.ParamByName('Fmiddleinitial').Text :=   '%'+DBEdit77.Text+'%';
  Requester.ParamByName('Flastname').Text      :=   '%'+DBEdit77.Text+'%';
  Requester.Open;
end;

procedure TFlexAccountMainMenuForm.DBEdit77KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
dbedit80.SetFocus;
end;

procedure TFlexAccountMainMenuForm.DBEdit80KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       dbedit82.SetFocus;
end;

procedure TFlexAccountMainMenuForm.DBEdit82KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
       dbmemo6.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel55Click(Sender: TObject);
begin
       acounter.Edit;
       nxlinklabel55.Visible := false;
       nxlinklabel56.Visible := true;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel57Click(Sender: TObject);
begin
       nxheaderpanel15.Visible := false;
       acounter.Cancel;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel5Click(Sender: TObject);
begin
  NxHeaderPanel8.Top:= 216;
  NxHeaderPanel8.Left := 186;
  NxHeaderPanel8.BringToFront;
  NxHeaderPanel8.Visible := True;

  acctdata.POPODate.EditMask := '!99/99/00;1;';
  AcctData.PO.Append;
  AcctData.POPODate.AsDateTime := Now;
  DBEdit34.SetFocus;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel56Click(Sender: TObject);
begin
       acounter.Post;
       nxlinklabel55.Visible := true;
       nxlinklabel56.Visible := false;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel54Click(Sender: TObject);
begin
  if acctdata.UsersUserRestriction.text = 'ADMINISTRATOR' then begin
       nxheaderpanel15.BringToFront;
       nxheaderpanel15.Left:= 283;
       nxheaderpanel15.Top:= 40;
       nxheaderpanel15.Visible := true;
       acounter.Close;
       acounter.Open;
       nxlinklabel55.BringToFront;
       nxlinklabel55.Visible := true;
       nxlinklabel56.Visible := false;
       
  end else begin
       MessageDlg('You do not have enough rights to view this.', mtInformation, [mbOK], 0);
       exit;
  end;
end;

procedure TFlexAccountMainMenuForm.DBEdit41KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then begin
dbmemo3.SetFocus;
end;
end;

procedure TFlexAccountMainMenuForm.VolgaDBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
     Perform(CM_DIALOGKEY,VK_TAB,0);
     Key := #0;
     if (Sender as TDBEdit) = DBEdit109 then VolgaDBEdit4.SetFocus;
    end;
end;

procedure TFlexAccountMainMenuForm.DBEdit48Exit(Sender: TObject);
begin
  try
  RequisitionDetailrdamount.Asfloat := RequisitionDetailrdcost.AsFloat * RequisitionDetailrdqty.AsFloat;
  except
      MessageDlg('Invalid item cost or number of items.. please check your entry.', mtError, [mbOK], 0);
  end;

end;

procedure TFlexAccountMainMenuForm.RequestAddBtnClick(Sender: TObject);
begin
  AcctData.requisitionRecmmdedDeprtmnt.text := RecommendedCombo.Text;
  AcctData.requisition.Post;
  checkWoutPO := false;
  nxheaderPanel14.Visible := False;
  crdbgrid2.Enabled       := true;
end;

procedure TFlexAccountMainMenuForm.RequestCancelClick(Sender: TObject);
begin
    checkWoutPO := false;
    nxheaderpanel14.Visible := False;
    crdbgrid2.Enabled       := true;
    AcctData.requisition.Cancel;
end;

procedure TFlexAccountMainMenuForm.RequisitionDetailAfterPost(
  DataSet: TDataSet);
begin
  with myquery1 do
   begin
    sql.Clear;
    sql.Add('Update requisitiondetail set rdamount2 = rdcost2 * rdqty, rdamount3 = rdcost3 * rdqty');
    execute;
   end;
    requisitiondetail.Refresh;
end;

procedure TFlexAccountMainMenuForm.NxHeaderPanel13MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  if (Button=mbLeft) And (Sender is TNxHeaderPanel) then
   begin
     Moving    := True;
     MovingPnl := TNxHeaderPanel(Sender);
     OldPos.X  := X;
     OldPos.Y  := Y;
   end
  else
   begin
     Moving    := False;
     MovingPnl := nil;
   end;
end;

procedure TFlexAccountMainMenuForm.NxHeaderPanel13MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
var MyX,MyY : Integer;
begin
  if (Moving) and (MovingPnl<>Nil) then
   begin
     DeltaPos.X := X -OldPos.X;
     DeltaPos.Y := Y -OldPos.Y;
     MyX := MovingPnl.Left + deltaPos.X;
     MyY := MovingPnl.Top + deltaPos.Y;
     if MyX <= 0 then MyX := 0;
     if MyY <= 0 then MyY := 0;
     MovingPnl.Left := MyX;
     MovingPnl.Top := MyY;
   end;
end;

procedure TFlexAccountMainMenuForm.NxHeaderPanel13MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbLeft) then
   begin
     Moving := False;
     MovingPnl := Nil;
   end;
end;

procedure TFlexAccountMainMenuForm.NxEdit1Change(Sender: TObject);
begin
  if length(nxedit1.text) > 3 then
   begin
    nxbutton4.Enabled := true;
   end
  else
   begin
    nxbutton4.Enabled := false;
   end;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel2Click(Sender: TObject);
begin
  nhpJoborder.Left:=164;
  nhpJoborder.Top:=100;

  if acctdata.requisition.IsEmpty then
   begin
      MessageDlg('No record to print Purchase Order.', mtInformation, [mbOK], 0);
      exit;
   end;

  if acctdata.requisitionstatus.text <> 'APPROVED' then
   begin
      MessageDlg('Requisition is not approved!', mtWarning, [mbOK], 0);
      exit;
   end;

  with myquery1 do
   begin
    sql.clear;
    sql.Add('select joborder from requisition where rvnumber = ' + QuotedStr(acctdata.requisitionrvName.text) + ' and joborder is not null');
    Execute;

   if IsEmpty then
    begin
      checker := acctdata.requisitionrvNumber.Text;
      nhpJoborder.Visible := true;
      acctdata.requisition.Edit;

      nxedit2.SetFocus;
    end
   else
    begin
     checker := acctdata.requisitionrvNumber.Text;
     NxButton1Click(sender);
    end;
   end;

end;

procedure TFlexAccountMainMenuForm.NxButton1Click(Sender: TObject);
var
  rvNumtmp : String;
begin

  Acounter.Open;
     rvNumtmp := acctdata.requisitionrvNumber.Text;

     if (acctdata.requisitionjoborder.IsNull) or (acctdata.requisitionjoborder.Text = '') then
     begin
       acctdata.requisition.Edit;
       if acctdata.UsersArea.Text = 'DMO' then
        begin
           DocInc(AcounterJDPO.text,'DJO#-');
           acctdata.requisition.Post;
           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JDPO = JDPO + 1');
           acounterupdate.execute;
        end;
      if acctdata.UsersArea.Text = 'PAO' then
        begin
           DocInc(AcounterJPPO.text,'PJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JPPO = JPPO + 1');
           acounterupdate.execute;
        end;
      if acctdata.UsersArea.Text = 'SAO' then
       begin
           DocInc(AcounterJSPO.text,'SJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSPO = JSPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'LAO' then
       begin
           DocInc(AcounterJLPO.text,'LJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JLPO = JLPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SHOP1' then
       begin
           DocInc(AcounterJSHDPO1.text,'SDJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSHDPO1 = JSHDPO1 + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SHOP2' then
       begin
           DocInc(AcounterJSHDPO2.text,'S2DJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSHDPO2 = JSHDPO2 + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'PAOSHOP' then
       begin
           DocInc(AcounterJSHPPO.text,'SHPJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSHPPO = JSHPPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'SAOSHOP' then
       begin
           DocInc(AcounterJSHSPO.text,'SHSJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSHSPO = JSHSPO + 1');
           acounterupdate.execute;
       end;
      if acctdata.UsersArea.Text = 'LAOSHOP' then
       begin
           DocInc(AcounterJSHLPO.text,'SHLJO#-');
           acctdata.requisition.Post;

           acounterupdate.SQL.Clear;
           acounterupdate.SQL.Add('update acounter set JSHLPO = JSHLPO + 1');
           acounterupdate.execute;
       end;
    end;

    nhpJoborder.Visible              := false;

    qrcanvass.close;
    qrcanvass.ParamByName('DN').Text     := checker;
    qrcanvass.Open;
    signatories.Open;

    JOaddressQ.Close;
    JOaddressQ.ParamByName('rvnumber').Text := rvNumtmp;
    JOaddressQ.Open;

    if qrcanvass.RecordCount > 10 then
     begin
      qrband51.Enabled := true;
      qrband51.Height  := 350;
      qrband50.Height  := 1;
      qrband50.enabled := false;
     end
    else
     begin
      qrband51.Enabled := false;
      qrband51.Height  := 10;
      qrband50.Height  := 350;
      qrband50.enabled := true;
     end;
       qrlabel269.Caption := nxedit1.Text;
       quickrep14.Preview;

       signatories.close;
       Acounter.Close;
end;

procedure TFlexAccountMainMenuForm.NxEdit2Change(Sender: TObject);
begin
  if length(nxedit2.text) > 3 then
   begin
    nxbutton1.Enabled := true;
   end
  else
   begin
    nxbutton1.Enabled := false;
   end;
end;

procedure TFlexAccountMainMenuForm.NxEdit3KeyPress(Sender: TObject;
  var Key: Char);
var
   Users:TMyquery;
   R:TMyquery;
begin
  if Key = #13 then
    begin
      Users := TMyQuery.Create(self);
      Users.Connection := AcctData.MyConnection1;
      Users.Close;
      Users.SQL.Clear;

      Users.SQL.Add('select * from users where password = :Userpassword');
      Users.ParamByName('Userpassword').Text := Leftstr(NxEdit3.Text,length(NxEdit3.Text)-5);
      Users.Open;
     
      POfilterPrnt.Close;
      POfilterPrnt.ParamByName('rvnumber').Text := AcctData.PODetaildocnumber.text;
      POfilterPrnt.Open;

      with acctdata do begin
          poRvPurpose.Close;
          poRvPurpose.ParamByName('idrequisitiondetail').Text := PODetailidRequisitionDetail.Text;
          poRvPurpose.Open;
      end;

      poRvnoQ.Close;
      poRvnoQ.ParamByName('idpo').Text :=  acctdata.PODetailidPO.Text;
      poRvnoQ.Open;

      if  (not Users.IsEmpty) and
      (('ronel' = RightStr(NxEdit3.Text,5)) or
      ('RONEL' = RightStr(NxEdit3.Text,5))) and (AcctData.POEmptyPO.Text = '2') then
        begin
              NxHeaderPanel22.Visible :=false;
              Signatories.Open;
              quickrep8.Preview;
          end else if Users.IsEmpty and (POfilterPrntAllowprintBudget.Value = false) then begin
              messagedlg('Invalid password!',mtError,[mbOK],0);
        end;

    end;
end;

procedure TFlexAccountMainMenuForm.NxEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    begin
      if NxEdit4.Text = 'request123' then
        begin
          emptyPOtmp := 'approved';
        end else begin
          emptyPOtmp := 'disapproved';
        end;
    end;
    NxHeaderPanel1.Visible := false;
end;

procedure TFlexAccountMainMenuForm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_F1 then
   begin
     if NOT((acctdata.UsersUserRestriction.Text = 'ADMINISTRATOR')) THEN
      begin
        MessageDlg('Sorry you have no priviledge to use this procedure!', mtWarning, [mbOK], 0);
        exit;
      end;
     if not Assigned(FrmFilterUser) then FrmFilterUser := TFrmFilterUser.Create(Application);
     with FrmFilterUser do
      begin
        if not FilterUser.Active then FilterUser.Open;
      end;
     FrmFilterUser.Show;
   end;
end;

procedure TFlexAccountMainMenuForm.NxComboBox1CloseUp(Sender: TObject);
begin

    With AcctData do
    begin
     case NxComboBox1.ItemIndex of
      0 : begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           if JVSearch.Text = 'Serach PCode or Number' then  Requisition.ParamByName('Rv').Text   := '%';

           Requisition.ParamByName('datefrom').AsDate  := JVdatefrom.AsDateTime;
           Requisition.ParamByName('dateto').AsDate    := jvdateto.AsDateTime;
           Requisition.ParamByName('APP').Text         := 'APPROVED';
           if UsersUserRestriction.Text = 'USER' then Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
          end;
      1: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           if JVSearch.Text = 'Serach PCode or Number' then  Requisition.ParamByName('Rv').Text   := '%';

           Requisition.ParamByName('datefrom').AsDate  := JVdatefrom.AsDateTime;
           Requisition.ParamByName('dateto').AsDate    := jvdateto.AsDateTime;
           Requisition.ParamByName('APP').Text         := 'DISAPPROVED';
           if UsersUserRestriction.Text = 'USER' then Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      2: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           if JVSearch.Text = 'Serach PCode or Number' then  Requisition.ParamByName('Rv').Text   := '%';

           Requisition.ParamByName('datefrom').AsDate  := JVdatefrom.AsDateTime;
           Requisition.ParamByName('dateto').AsDate    := jvdateto.AsDateTime;
           Requisition.ParamByName('APP').Text         := 'CANCELLED';
           if UsersUserRestriction.Text = 'USER' then Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      3: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           if JVSearch.Text = 'Serach PCode or Number' then  Requisition.ParamByName('Rv').Text   := '%';

           Requisition.ParamByName('datefrom').AsDate  := JVdatefrom.AsDateTime;
           Requisition.ParamByName('dateto').AsDate    := jvdateto.AsDateTime;
           Requisition.ParamByName('APP').Text         := 'PENDING';
           if UsersUserRestriction.Text = 'USER' then Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      end;
   end;

end;

procedure TFlexAccountMainMenuForm.NxComboBoxCanvasSelect(Sender: TObject);
begin
 With AcctData do
    begin
      CanvassData.Close;
      CanvassData.ParamByName('rv').Text          := '%';
      CanvassData.ParamByName('status').Text         := NxComboBoxCanvas.Text;
      // CanvassData.ParamByName('id').Text          := UsersIdUsers.Text;
      CanvassData.ParamByName('datefrom').AsDate  := NxDatePicker1.AsDateTime;
      CanvassData.ParamByName('dateto').AsDate    := NxDatePicker2.AsDateTime;
      CanvassData.Open;
    end;
end;

procedure TFlexAccountMainMenuForm.NxButton2Click(Sender: TObject);
begin
nhpJoborder.Visible := false;

end;

procedure TFlexAccountMainMenuForm.NxButton3Click(Sender: TObject);
begin
  TmpReqstnRecomndRpt:='OTHERS';
  QRLabel141.Top  :=  17;
  QRLabel141.Left :=  597;
  QRDBText19.Top  :=  16;
  QRDBText19.Left :=  636;
  QRLabel11.Top   :=  81;
  QRLabel11.Left  :=  525;
  QRLabel11.Enabled:=true;
  QRDBText19.Enabled:=true;
  QRLabel141.Enabled:=true;

  QRLabel177.Left :=  229;
  QRLabel177.Top  :=  160;
  QRDBText181.Left:=  230;
  QRDBText181.Top :=  203;
  QRShape78.Left  :=  227;
  QRShape78.Top   :=  219;
  QRDBText16.Left :=  231;
  QRDBText16.Top  :=  228;

   //Approved by assignatories================
  QRDBText82.DataField    := 'OthrsName';
  QRDBText201.dataField   := 'OthrsPosition';
  // Prepared By assignatorie================
   QRLabel180.Caption     :=  'Prepared By:';
   QRDBText158.DataSet    :=  AcctData.Users;
   QRDBText161.DataSet    :=  AcctData.Users;
   QRDBText158.DataField  :=  'UserID';
   QRDBText161.DataField  :=  'Position';

  QRLabel178.Enabled:=false;
  QRDBText80.Enabled:=false;
  QRShape79.Enabled:=false;
  QRDBText81.Enabled:=false;

  isoQuery.Close;
  isoQuery.ParamByName('reporttype').Text := 'REQUISITION';
  isoQuery.Open;

  RequisitionPrvwRpt();
end;

procedure TFlexAccountMainMenuForm.CRDBGrid12DblClick(Sender: TObject);
begin

  AcctData.POPCode.Text  := AcctData.PayeePCode.Text;
  AcctData.POName.Text   := AcctData.PayeeName.Text;
  NxHeaderPanel9.Visible :=False;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid14DblClick(Sender: TObject);
begin
  RQDetailPO.Close;
  RQDetailPO.ParamByName('idRequisition').Text := RqPOidrequisition.Text;
  RQDetailPO.Open;

  StaticText1.Caption := RqPOrvName.Text;
  StaticText2.Caption := RqPOsupplier2.Text;
  StaticText3.Caption := RqPOsupplier3.Text;
end;

procedure TFlexAccountMainMenuForm.CRDBGrid17DblClick(Sender: TObject);
begin
  CanvasSlctPayee();
end;

procedure TFlexAccountMainMenuForm.CRDBGrid6DblClick(Sender: TObject);
var
  Title:String;
begin
  Title:= Requestertitle.Text;
  DBEdit77.Text:= Requesterfirstname.Text + ' '+Requestermiddleinitial.Text+'. '+Requesterlastname.Text;
  DBEdit99.Text:= Title;
  CRDBGrid6.Visible:=false;
  RecommendedCombo.SetFocus;
end;

procedure TFlexAccountMainMenuForm.QRBand18BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
 quickrep8.ResetPageFooterSize;
end;

procedure TFlexAccountMainMenuForm.NxLinkLabel3Click(Sender: TObject);
begin
 exportitems.Execute;
end;


//=================================================
//=================================================
Procedure AddItemRqt();
begin
with FlexAccountMainMenuForm do begin
  if dsrequisitionDetail.state in [dsedit] then
  begin
   requisitiondetail.Post;
   requisitiondetail.Edit;
   RequisitionDetailrdamount.AsCurrency := RequisitionDetailrdqty.AsCurrency * RequisitionDetailrdcost.AsCurrency;
   requisitiondetail.Post;
   nxheaderpanel12.Visible                 := False;
  end
 else
  begin
   RequisitionDetailidrequisition.Text     := acctdata.requisitionidrequisition.text;
   RequisitionDetaildocnumber.text         := acctdata.requisitionrvNumber.text;
   requisitiondetail.Post;
   requisitiondetail.Edit;
   RequisitionDetailrdamount.AsCurrency := RequisitionDetailrdqty.AsCurrency * RequisitionDetailrdcost.AsCurrency;
   requisitiondetail.Post;

   nxheaderpanel12.Visible                 := False;

   if (MessageBox(0, 'Do you want to add another item ? ', '', MB_ICONQUESTION or MB_YESNO) = idYes) then
    begin

     nxheaderpanel12.Left    := 32;
     nxheaderpanel12.Top     := 160;
     dbedit29.text           := '0';
     nxheaderpanel12.Visible := True;
     requisitiondetail.Append;
     DBEdit32.SetFocus;
    end;

end;

    myquery1.SQL.Clear;
    myquery1.sql.Add('update requisition set amount = (select sum(ifnull(rdamount,0)) from requisitiondetail where docnumber = ' + quotedstr(acctdata.requisitionrvnumber.text) + ' ) where rvnumber = ' + quotedstr(acctdata.requisitionrvnumber.text));
    myquery1.Execute;
end;
end;

Procedure RequisitionPrvwRpt();
Var string1 : string;
begin
with FlexAccountMainMenuForm do begin
  with acctdata do
      begin
       if acctdata.requisitionstatus.text  = 'APPROVED' then
        begin
         qrrequisition.close;
         qrrequisition.ParamByName('rv').Text := acctdata.requisitionrvNumber.Text;
         qrRequisition.Open;

       if requisitionRecmmdedDeprtmnt.text = 'DMO-ISD/SHOP' then
          begin
              QRDBText80.DataField  :='isdrecom';
              QRDBText81.DataField  :='isdrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'DMO-OGM' then
          begin
              QRDBText80.DataField  :='OGMrecom';
              QRDBText81.DataField  :='OGMrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'DMO-ESD' then
          begin
              QRDBText80.DataField  :='esdrecom';
              QRDBText81.DataField  :='esdrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'DMO-CAD' then
          begin
              QRDBText80.DataField  :='CADrecom';
              QRDBText81.DataField  :='CADrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'DMO-FSD' then
          begin
              QRDBText80.DataField  :='Fsdrecom';
              QRDBText81.DataField  :='Fsdrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'LAO' then
          begin
              QRDBText80.DataField  :='LAOrecom';
              QRDBText81.DataField  :='LAOrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'PAO' then
          begin
              QRDBText80.DataField  :='PAOrecom';
              QRDBText81.DataField  :='PAOrecompos';
          end
         else if requisitionRecmmdedDeprtmnt.text = 'SAO' then
          begin
              QRDBText80.DataField  :='SAOrecom';
              QRDBText81.DataField  :='SAOrecompos';

           end
          else if requisitionRecmmdedDeprtmnt.text = 'DMO-COMD' then
           begin
            string1 := signatoriesCOMDrecompos.text;
                QRDBText80.DataField  :='COMDname';
                QRDBText81.DataField  :='COMDRECOM';
           end
          else if requisitionRecmmdedDeprtmnt.text = 'DMO-IAD' then
           begin
            string1 := signatoriesCOMDrecompos.text;
                QRDBText80.DataField  :='Audname';
                QRDBText81.DataField  :='Audpos';
           end
          else if requisitionRecmmdedDeprtmnt.text = 'DMO-CORPLAN' then
           begin
                QRDBText80.DataField  :='CORPLANrecom';
                QRDBText81.DataField  :='CORPLANrecompos';
           end;

         NxHeaderPanel21.Visible:=false;
         signatories.Open;
         quickrep3.PREVIEWWidth        := Screen.width;
         QuickRep3.previewheight       := Screen.Height;
         QuickRep3.PreviewInitialState := wsMaximized;
         quickrep3.Preview;

        end
       else
        begin
         MessageBox(0, 'Requisition is not yet approved!', '', MB_ICONINFORMATION or MB_OK);
        end;
       end;

    end;
  end;
Procedure RequestRefresh();
begin
 with FlexAccountMainMenuForm do begin
   With AcctData do
    begin
     case NxComboBox1.ItemIndex of
      0 : begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           Requisition.ParamByName('datefrom').AsDate  := StartOfTheMonth(JVdatefrom.AsDateTime);
           Requisition.ParamByName('dateto').AsDate    := EndOfTheYear(jvdateto.AsDateTime);
           Requisition.ParamByName('APP').Text         := 'APPROVED';
           Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
          end;
      1: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           Requisition.ParamByName('datefrom').AsDate  := StartOfTheMonth(JVdatefrom.AsDateTime);
           Requisition.ParamByName('dateto').AsDate    := EndOfTheYear(jvdateto.AsDateTime);
           Requisition.ParamByName('APP').Text         := 'DISAPPROVED';
           Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      2: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           Requisition.ParamByName('datefrom').AsDate  := StartOfTheMonth(JVdatefrom.AsDateTime);
           Requisition.ParamByName('dateto').AsDate    := EndOfTheYear(jvdateto.AsDateTime);
           Requisition.ParamByName('APP').Text         := 'CANCELLED';
           Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      3: begin
           Requisition.Close;
           Requisition.ParamByName('Rv').Text          := '%'+JVSearch.text+'%';
           Requisition.ParamByName('datefrom').AsDate  := StartOfTheMonth(JVdatefrom.AsDateTime);
           Requisition.ParamByName('dateto').AsDate    := EndOfTheYear(jvdateto.AsDateTime);
           Requisition.ParamByName('APP').Text         := 'PENDING';
           Requisition.ParamByName('ID').AsInteger     := UserAdministration;
           Requisition.Open;
         end;
      end;
   end;
 end;

end;
Procedure CanvasSlctPayee();
begin
  with FlexAccountMainMenuForm do begin
    case EditSupp of
      1 :  begin
            AcctData.CanvassDatarvPCode.Text := AcctData.PayeePCode.Text;
            AcctData.CanvassDatarvName.Text  := AcctData.PayeeName.Text;
           end;
      2 :  AcctData.CanvassDatasupplier2.Text := AcctData.PayeeName.Text;
      3 :  AcctData.CanvassDatasupplier3.Text := AcctData.PayeeName.Text;
    end;
    NxHeaderPanel18.Visible := False;
    AcctData.Payee.Close;
    NxHeaderPanel10.Enabled := True;
    case EditSupp of
      1 :  DBEdit11.SetFocus;
      2 :  DBEdit15.SetFocus;
      3 :  DBEdit42.SetFocus;
    end;
  end;
end;
end.

