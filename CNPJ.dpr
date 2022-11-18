program CNPJ;

uses
  Vcl.Forms,
  UnitPrincipaal in 'UnitPrincipaal.pas' {Form1},
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  RootUnit in 'RootUnit.pas',
  uFormat in 'uFormat.pas',
  unitMensagens in 'unitMensagens.pas' {formMensagens},
  unitFuncoes in 'unitFuncoes.pas',
  classe.conexao in 'classe.conexao.pas',
  unitConfigServidor in 'unitConfigServidor.pas' {formConfigServidor},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TformMensagens, formMensagens);
  Application.CreateForm(TformConfigServidor, formConfigServidor);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
