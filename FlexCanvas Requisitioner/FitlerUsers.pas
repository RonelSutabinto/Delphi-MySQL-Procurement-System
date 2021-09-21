unit FitlerUsers;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBAccess, MyAccess, MemDS, Grids, DBGrids, CRGrid, CRDBGrid1;

type
  TFrmFilterUser = class(TForm)
    FilterUser: TMyQuery;
    dsFilterUser: TMyDataSource;
    FilterUserusername: TStringField;
    FilterUseridusers: TLargeintField;
    CRDBGrid1: TCRDBGrid1;
    procedure CRDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFilterUser: TFrmFilterUser;

implementation

uses Data, FlexMenu,Modtools,DateUtils;

{$R *.dfm}

procedure TFrmFilterUser.CRDBGrid1DblClick(Sender: TObject);
begin
  with FlexAccountMainMenuForm,acctdata do
   begin
    UserAdministration := FilterUseridusers.AsInteger;
    NxComboBox1CloseUp(sender);
   end;

   FrmFilterUser.Close;
end;

end.
