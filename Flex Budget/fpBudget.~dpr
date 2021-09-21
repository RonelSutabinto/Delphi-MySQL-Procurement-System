program fpBudget;

uses
  Forms,
  FlexAccountIntro in 'FlexAccountIntro.pas' {IntroForm},
  Data in 'Data.pas' {AcctData: TDataModule},
  FlexMenu in 'FlexMenu.pas' {FlexAccountMainMenuForm},
  ModTools in 'MODTOOLS.PAS',
  PayeeList in 'PayeeList.pas' {PayeeListForm},
  InventoryReportsDownload in 'InventoryReportsDownload.pas' {InvReportsDown},
  datatransfer in 'datatransfer.pas' {DataTransferForm},
  budgetform in 'budgetform.pas' {BudgetoptForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TIntroForm, IntroForm);
  Application.CreateForm(TAcctData, AcctData);
  Application.CreateForm(TInvReportsDown, InvReportsDown);
  Application.CreateForm(TDataTransferForm, DataTransferForm);
  Application.CreateForm(TBudgetoptForm, BudgetoptForm);
  Application.Run;
end.
