program CNPJ;

uses
  Vcl.Forms,
  UnitPrincipaal in 'UnitPrincipaal.pas' {Form1},
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  RootUnit in 'RootUnit.pas',
  uFormat in 'uFormat.pas',
  DM in 'DM.pas' {unitDM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TunitDM, unitDM);
  Application.Run;
end.
