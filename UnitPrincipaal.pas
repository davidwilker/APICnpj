unit UnitPrincipaal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  IdTCPConnection, IdTCPClient, IdHTTP, IdBaseComponent, IdComponent,
  IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btBuscar: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    editSexo: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    editNumAlterContrat: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    idHTTP: TIdHTTP;
    OpenSSL: TIdSSLIOHandlerSocketOpenSSL;
    Label17: TLabel;
    btGravar: TButton;
    btAlterar: TButton;
    DBNavigator1: TDBNavigator;
    editCnpj: TEdit;
    editRazaoSocial: TEdit;
    editInscricaoEstadual: TEdit;
    editNire: TEdit;
    editDataContrato: TEdit;
    editJunta: TEdit;
    editRua: TEdit;
    editBairro: TEdit;
    editCidade: TEdit;
    editTelefone: TEdit;
    editEstado: TEdit;
    editCep: TEdit;
    editObs: TEdit;
    editEmail: TEdit;
    procedure btBuscarClick(Sender: TObject);
    procedure editCnpjChange(Sender: TObject);
    procedure editCepChange(Sender: TObject);
    procedure editTelefoneChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Pkg.Json.DTO, RootUnit, uFormat, DM;


procedure TForm1.btAlterarClick(Sender: TObject);
begin
  editRazaoSocial.ReadOnly := false;
  editRazaoSocial.ReadOnly := false;
  editDataContrato.ReadOnly := false;
  editRua.ReadOnly := false;
  editBairro.ReadOnly := false;
  editCep.ReadOnly := false;
  editCidade.ReadOnly := false;
  editEstado.ReadOnly := false;
  editEmail.ReadOnly := false;
  editTelefone.ReadOnly := false;
  editInscricaoEstadual.ReadOnly := false;
  editObs.ReadOnly := false;

  editRazaoSocial.Color := clWindow;
  editRazaoSocial.Color := clWindow;
  editDataContrato.Color := clWindow;
  editRua.Color := clWindow;
  editBairro.Color := clWindow;
  editCep.Color := clWindow;
  editCidade.Color := clWindow;
  editEstado.Color := clWindow;
  editEmail.Color := clWindow;
  editTelefone.Color := clWindow;
  editInscricaoEstadual.Color := clWindow;
  editObs.Color := clWindow;

  btAlterar.Enabled := false;
end;

procedure TForm1.btBuscarClick(Sender: TObject);
var
  vResult: string;
  Root: TRoot;

begin



  vResult := '';

  OpenSSL.SSLOptions.Method := sslvTLSv1_2;
  OpenSSL.SSLOptions.Mode   := sslmClient;
  OpenSSL.PassThrough       := True;
  idHTTP.IOHandler          := OpenSSL;

  IdHTTP.Request.UserAgent := 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36';
  IdHTTP.Request.Accept := 'application/json, text/javascript, */*; q=0.01';
  IdHTTP.Request.ContentType := 'application/json';
  IdHTTP.Request.CharSet := 'utf-8';

    try

    vResult := IdHTTP.Get('https://api-publica.speedio.com.br/buscarcnpj?cnpj=' +SomenteNumero(editCnpj.Text));

  except
    on E: EIdHTTPProtocolException do Begin
          IdHTTP.Disconnect;
          ShowMessage(e.ErrorMessage);
    End;

  end;

  Root := TRoot.Create;
  try
    Root.AsJson := vResult;

    if vResult.Length < 50 then
      begin
        ShowMessage('CNPJ não encontrado!');

      end;

    if vResult.Length > 50 then
      begin
        editRazaoSocial.ReadOnly := true;
        editRazaoSocial.ReadOnly := true;
        editDataContrato.ReadOnly := true;
        editRua.ReadOnly := true;
        editBairro.ReadOnly := true;
        editCep.ReadOnly := true;
        editCidade.ReadOnly := true;
        editEstado.ReadOnly := true;
        editEmail.ReadOnly := true;
        editTelefone.ReadOnly := true;
        editInscricaoEstadual.ReadOnly := true;
        editObs.ReadOnly := true;

        editRazaoSocial.Color := clSilver;
        editRazaoSocial.Color := clSilver;
        editDataContrato.Color := clSilver;
        editRua.Color := clSilver;
        editBairro.Color := clSilver;
        editCep.Color := clSilver;
        editCidade.Color := clSilver;
        editEstado.Color := clSilver;
        editEmail.Color := clSilver;
        editTelefone.Color := clSilver;
        editInscricaoEstadual.Color := clSilver;
        editObs.Color := clSilver;

        btAlterar.Enabled := true;
        btGravar.Enabled := true;
      end;


    editRazaoSocial.Text := Root.RAZAOSOCIAL;
    editDataContrato.Text := Root.DATAABERTURA;
    editRua.Text := Root.TIPOLOGRADOURO + ' ' + Root.LOGRADOURO + ' ' + Root.COMPLEMENTO;
    editBairro.Text := Root.BAIRRO;
    editCep.Text := Root.CEP;
    editCidade.Text := Root.MUNICIPIO;
    editEstado.Text := Root.UF;
    editEmail.Text := Root.Email;
    editTelefone.Text := Root.DDD +' '+ Root.TELEFONE;
    editInscricaoEstadual.Text := Root.CNAEPRINCIPALCODIGO;
    editObs.Text := Root.CNAEPRINCIPALDESCRICAO;

    //editRazaoSocial.Text := Root.Name;


  finally
    Root.Free;
  end;
end;



procedure TForm1.btGravarClick(Sender: TObject);
begin

  unitDM.qrSql.Close;

  unitDM.qrSql.Sql.Clear;


  unitDM.qrSql.SQL.Add('INSERT INTO pessoa_juridica (CNPJ, RAZAO_SOCIAL, INSCRI_ESTADUAL, NIRE, DATA_CONTRATO, ENDERECO, BAIRRO, CIDADE, ESTADO, TELEFONE, EMAIL, CEP, OBSERVACAO)');
  unitDM.qrSql.SQL.Add('VALUES (:CNPJ, :RAZAO_SOCIAL, :INSCRI_ESTADUAL, :NIRE, :DATA_CONTRATO, :ENDERECO, :BAIRRO, :CIDADE, :ESTADO, :TELEFONE, :EMAIL, :CEP, :OBSERVACAO)');
  unitDM.qrSql.ParamByName('CNPJ').AsString := SomenteNumero(editCnpj.Text);
  unitDM.qrSql.ParamByName('RAZAO_SOCIAL').AsString := editRazaoSocial.Text;
  unitDM.qrSql.ParamByName('INSCRI_ESTADUAL').AsString := editInscricaoEstadual.Text;
  unitDM.qrSql.ParamByName('NIRE').AsString := editNire.Text;
  unitDM.qrSql.ParamByName('DATA_CONTRATO').AsDate := StrToDate(editDataContrato.Text);
  unitDM.qrSql.ParamByName('ENDERECO').AsString := editRua.Text;
  unitDM.qrSql.ParamByName('BAIRRO').AsString := editBairro.Text;
  unitDM.qrSql.ParamByName('CIDADE').AsString := editCidade.Text;
  unitDM.qrSql.ParamByName('ESTADO').AsString := editEstado.Text;
  unitDM.qrSql.ParamByName('TELEFONE').AsString := SomenteNumero(editTelefone.Text);
  unitDM.qrSql.ParamByName('EMAIL').AsString := editEmail.Text;
  unitDM.qrSql.ParamByName('CEP').AsString := SomenteNumero(editCep.Text);
  unitDM.qrSql.ParamByName('OBSERVACAO').AsString := editObs.Text;

  unitDM.qrSql.ExecSQL;

  btGravar.Enabled := false;
  btAlterar.Enabled := true;

end;

procedure TForm1.editCepChange(Sender: TObject);
begin
  Formatar(editCep, TFormato.CEP);
end;

procedure TForm1.editCnpjChange(Sender: TObject);
begin
  Formatar(editCnpj, TFormato.CNPJ);
end;


procedure TForm1.editTelefoneChange(Sender: TObject);
begin
  Formatar(editTelefone, TFormato.TelefoneFixo);
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  btAlterar.Enabled := false;
  btGravar.Enabled := false;
end;

end.
