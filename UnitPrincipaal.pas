unit UnitPrincipaal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.Buttons,
  IdTCPConnection, IdTCPClient, IdHTTP, IdBaseComponent, IdComponent,
  IdServerIOHandler, IdSSL, IdSSLOpenSSL, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, unitFuncoes, unitMensagens,
  unitConfigServidor;

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
    Panel1: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    btGravar: TSpeedButton;
    Panel7: TPanel;
    btAlterar: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    MainMenu1: TMainMenu;
    Sistemas1: TMenuItem;
    ConfigBanco1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    procedure btBuscarClick(Sender: TObject);
    procedure editCnpjChange(Sender: TObject);
    procedure editCepChange(Sender: TObject);
    procedure editTelefoneChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure editDataContratoChange(Sender: TObject);
    procedure ConfigBanco1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Pkg.Json.DTO, RootUnit, uFormat, unitDM;


procedure TForm1.btAlterarClick(Sender: TObject);
begin
  editRazaoSocial.ReadOnly       := false;
  editRazaoSocial.ReadOnly       := false;
  editDataContrato.ReadOnly      := false;
  editRua.ReadOnly               := false;
  editBairro.ReadOnly            := false;
  editCep.ReadOnly               := false;
  editCidade.ReadOnly            := false;
  editEstado.ReadOnly            := false;
  editEmail.ReadOnly             := false;
  editTelefone.ReadOnly          := false;
  editInscricaoEstadual.ReadOnly := false;
  editObs.ReadOnly               := false;
  editSexo.ReadOnly              := false;
  editJunta.ReadOnly             := false;
  editNumAlterContrat.ReadOnly   := false;
  editNire.ReadOnly              := false;

  editRazaoSocial.Color       := clWindow;
  editRazaoSocial.Color       := clWindow;
  editDataContrato.Color      := clWindow;
  editRua.Color               := clWindow;
  editBairro.Color            := clWindow;
  editCep.Color               := clWindow;
  editCidade.Color            := clWindow;
  editEstado.Color            := clWindow;
  editEmail.Color             := clWindow;
  editTelefone.Color          := clWindow;
  editInscricaoEstadual.Color := clWindow;
  editObs.Color               := clWindow;
  editSexo.Color              := clWindow;
  editJunta.Color             := clWindow;
  editNumAlterContrat.Color   := clWindow;
  editNire.Color              := clWindow;

  btAlterar.enabled := false;
end;

procedure TForm1.btGravarClick(Sender: TObject);
begin

  DM.qrSql.Close;

  DM.qrSql.Sql.Clear;


  DM.qrSql.SQL.Add('INSERT INTO PESSOAS (CHAVE_PESSOAS, CPF, NOME, DOCUMENTO, OBSERVACAO, PESSOA_JURIDICA, ENDERECO, CIDADE, CEP, BAIRRO, UF, TELEFONE, EMAIL, NIRE, DATA_CONTRATO)');
  DM.qrSql.SQL.Add('VALUES ((SELECT MAX(CHAVE_PESSOAS) + 1 FROM PESSOAS),');
  DM.qrSql.SQL.Add(':CPF, :NOME, :DOCUMENTO, :OBSERVACAO, :PESSOA_JURIDICA, :ENDERECO, :CIDADE, :CEP, :BAIRRO, :UF, :TELEFONE, :EMAIL, :NIRE, :DATA_CONTRATO)');
  DM.qrSql.ParamByName('CPF').AsString := SomenteNumero(editCnpj.Text);
  DM.qrSql.ParamByName('NOME').AsString := editRazaoSocial.Text;
  DM.qrSql.ParamByName('DOCUMENTO').AsString := editInscricaoEstadual.Text;
  DM.qrSql.ParamByName('NIRE').AsString := editNire.Text;
  DM.qrSql.ParamByName('DATA_CONTRATO').AsDateTime := StrToDateTime(editDataContrato.Text);
  DM.qrSql.ParamByName('ENDERECO').AsString := editRua.Text;
  DM.qrSql.ParamByName('BAIRRO').AsString := editBairro.Text;
  DM.qrSql.ParamByName('CIDADE').AsString := editCidade.Text;
  DM.qrSql.ParamByName('UF').AsString := editEstado.Text;
  DM.qrSql.ParamByName('TELEFONE').AsString := SomenteNumero(editTelefone.Text);
  DM.qrSql.ParamByName('EMAIL').AsString := editEmail.Text;
  DM.qrSql.ParamByName('CEP').AsString := SomenteNumero(editCep.Text);
  DM.qrSql.ParamByName('OBSERVACAO').AsString := editObs.Text;
  DM.qrSql.ParamByName('PESSOA_JURIDICA').AsString := 'S';

  DM.qrSql.ExecSQL;

  btGravar.Enabled := false;
  btAlterar.Enabled := true;

  funcCriarMensagem('GRAVAR DADOS',
                          'CNPJ GRAVADO',
                          'CNPJ: '+editCnpj.Text+' gravado no banco de dados de NOTAS',
                          ExtractFilePath(Application.ExeName) + '\icons\bancoConectado.bmp',
                          'OK');
  editRazaoSocial.ReadOnly       := true;
  editRazaoSocial.ReadOnly       := true;
  editDataContrato.ReadOnly      := true;
  editRua.ReadOnly               := true;
  editBairro.ReadOnly            := true;
  editCep.ReadOnly               := true;
  editCidade.ReadOnly            := true;
  editEstado.ReadOnly            := true;
  editEmail.ReadOnly             := true;
  editTelefone.ReadOnly          := true;
  editInscricaoEstadual.ReadOnly := true;
  editObs.ReadOnly               := true;
  editSexo.ReadOnly              := true;
  editJunta.ReadOnly             := true;
  editNumAlterContrat.ReadOnly   := true;
  editNire.ReadOnly              := true;

  editRazaoSocial.Color          := clSilver;
  editRazaoSocial.Color          := clSilver;
  editDataContrato.Color         := clSilver;
  editRua.Color                  := clSilver;
  editBairro.Color               := clSilver;
  editCep.Color                  := clSilver;
  editCidade.Color               := clSilver;
  editEstado.Color               := clSilver;
  editEmail.Color                := clSilver;
  editTelefone.Color             := clSilver;
  editInscricaoEstadual.Color    := clSilver;
  editObs.Color                  := clSilver;
  editSexo.Color                 := clSilver;
  editJunta.Color                := clSilver;
  editNumAlterContrat.Color      := clSilver;
  editNire.Color                 := clSilver;

  btAlterar.Enabled := true;
  btGravar.Enabled := false;

end;

procedure TForm1.ConfigBanco1Click(Sender: TObject);
begin
  formConfigServidor.ShowModal;
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

  IdHTTP.Request.UserAgent    := 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36';
  IdHTTP.Request.Accept       := 'application/json, text/javascript, */*; q=0.01';
  IdHTTP.Request.ContentType  := 'application/json';
  IdHTTP.Request.CharSet      := 'utf-8';

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

        funcCriarMensagem('PESQUISA CNPJ',
                          'CNPJ NÃO ENCONTRADO',
                          'CNPJ: '+editCnpj.Text+' não encontrado na base da Receita Federal!',
                          ExtractFilePath(Application.ExeName) + '\icons\delete.bmp',
                          'OK');
      end;

    if vResult.Length > 50 then
      begin
        editRazaoSocial.ReadOnly       := true;
        editRazaoSocial.ReadOnly       := true;
        editDataContrato.ReadOnly      := true;
        editRua.ReadOnly               := true;
        editBairro.ReadOnly            := true;
        editCep.ReadOnly               := true;
        editCidade.ReadOnly            := true;
        editEstado.ReadOnly            := true;
        editEmail.ReadOnly             := true;
        editTelefone.ReadOnly          := true;
        editInscricaoEstadual.ReadOnly := true;
        editObs.ReadOnly               := true;
        editSexo.ReadOnly              := true;
        editJunta.ReadOnly             := true;
        editNumAlterContrat.ReadOnly   := true;
        editNire.ReadOnly              := true;

        editRazaoSocial.Color          := clSilver;
        editRazaoSocial.Color          := clSilver;
        editDataContrato.Color         := clSilver;
        editRua.Color                  := clSilver;
        editBairro.Color               := clSilver;
        editCep.Color                  := clSilver;
        editCidade.Color               := clSilver;
        editEstado.Color               := clSilver;
        editEmail.Color                := clSilver;
        editTelefone.Color             := clSilver;
        editInscricaoEstadual.Color    := clSilver;
        editObs.Color                  := clSilver;
        editSexo.Color                 := clSilver;
        editJunta.Color                := clSilver;
        editNumAlterContrat.Color      := clSilver;
        editNire.Color                 := clSilver;

        btAlterar.Enabled := true;
        btGravar.Enabled := true;
      end;


    editRazaoSocial.Text        := Root.RAZAOSOCIAL;
    editDataContrato.Text       := Root.DATAABERTURA;
    editRua.Text                := Root.TIPOLOGRADOURO + ' ' + Root.LOGRADOURO + ' ' + Root.COMPLEMENTO;
    editBairro.Text             := Root.BAIRRO;
    editCep.Text                := Root.CEP;
    editCidade.Text             := Root.MUNICIPIO;
    editEstado.Text             := Root.UF;
    editEmail.Text              := Root.Email;
    editTelefone.Text           := Root.DDD +' '+ Root.TELEFONE;
    editInscricaoEstadual.Text  := Root.CNAEPRINCIPALCODIGO;
    editObs.Text                := Root.CNAEPRINCIPALDESCRICAO;

    //editRazaoSocial.Text := Root.Name;


  finally
    Root.Free;
  end;
end;



procedure TForm1.editCepChange(Sender: TObject);
begin
  Formatar(editCep, TFormato.CEP);
end;

procedure TForm1.editCnpjChange(Sender: TObject);
begin
  Formatar(editCnpj, TFormato.CNPJ);
end;


procedure TForm1.editDataContratoChange(Sender: TObject);
begin
  //Formatar(editDataContrato, TFormato.Dt);
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
