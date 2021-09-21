unit STCSPayrollLib;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxCollection, StdCtrls, Mask, DBCtrls, DB, DBAccess, MyAccess,
  MemDS, Grids, DBGrids, CRGrid;

  procedure ShowGrid(grid : TControl; editbox : tcustomedit);
  procedure ShowPanelGrid(grid : TControl; editbox : tcustomedit; Panel : Tcontrol);
implementation

procedure ShowGrid(grid : TControl; editbox : tcustomedit);
begin
  if (Length(editbox.Text) > 3) and (editbox.Focused) then
   begin
    grid.Visible := true;
    grid.BringToFront;

    grid.Left    := editbox.Left;
    grid.Top     := editbox.Top + 20;
   end
  else
   begin
    grid.Visible := false;
    grid.SendToBack;
   end;
end;

procedure ShowPanelGrid(grid : TControl; editbox : tcustomedit; Panel : Tcontrol);
begin
  if (Length(editbox.Text) > 3) and (editbox.Focused) then
   begin
    grid.Visible := true;
    grid.BringToFront;

    grid.Left    := panel.Left + Editbox.Left;
    grid.Top     := panel.Top +  editbox.Top + 20;
   end
  else
   begin
    grid.Visible := false;
    grid.SendToBack;
   end;
end;

end.
