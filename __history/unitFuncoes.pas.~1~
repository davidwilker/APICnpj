unit unitFuncoes;

interface

  function Criptografia( Senha, Chave: string): string;
  function funcCriarMensagem (TituloJanela, TituloMsg, Msg, Icone, Tipo : String ): boolean;

implementation

uses unitMensagens;

function Criptografia( Senha, Chave: String ): string;
var
  x, y : Integer;
  NovaSenha : String;
begin
  for x := 1 to Length( Chave )  do
  begin
    NovaSenha := '';

    for y := 1 to Length( Senha ) do
    begin

      NovaSenha := NovaSenha + chr ( ( Ord( Chave[X]) xor Ord( Senha[y] ) ) );
    
    end;

    Senha := NovaSenha;
      
  end;

  result := Senha;
end;

function funcCriarMensagem (TituloJanela, TituloMsg, Msg, Icone, Tipo : String ): boolean;
begin
  Result := false;

  formMensagens                 := TformMensagens.Create(nil);
  formMensagens.sTituloJanela   := TituloJanela;
  formMensagens.sTituloMsg      := TituloMsg;
  formMensagens.sMsg            := Msg;
  formMensagens.sCaminhoIcone   := Icone;
  formMensagens.sTipo           := Tipo;

  formMensagens.ShowModal;
  Result := formMensagens.bRespostaMSG;
end;

end.
