unit RootUnit;

interface

uses
  Pkg.Json.DTO, System.Generics.Collections, REST.Json.Types;

{$M+}

type
  TRoot = class(TJsonDTO)
  private
    FBAIRRO: string;
    FCEP: string;
    [JSONName('CNAE PRINCIPAL CODIGO')]
    FCNAEPRINCIPALCODIGO: string;
    [JSONName('CNAE PRINCIPAL DESCRICAO')]
    FCNAEPRINCIPALDESCRICAO: string;
    FCNPJ: string;
    FCOMPLEMENTO: string;
    [JSONName('DATA ABERTURA')]
    FDATAABERTURA: string;
    FDDD: string;
    FEMAIL: string;
    FLOGRADOURO: string;
    FMUNICIPIO: string;
    [JSONName('NOME FANTASIA')]
    FNOMEFANTASIA: string;
    FNUMERO: string;
    [JSONName('RAZAO SOCIAL')]
    FRAZAOSOCIAL: string;
    FSTATUS: string;
    FTELEFONE: string;
    [JSONName('TIPO LOGRADOURO')]
    FTIPOLOGRADOURO: string;
    FUF: string;
  published
    property BAIRRO: string read FBAIRRO write FBAIRRO;
    property CEP: string read FCEP write FCEP;
    property CNAEPRINCIPALCODIGO: string read FCNAEPRINCIPALCODIGO write FCNAEPRINCIPALCODIGO;
    property CNAEPRINCIPALDESCRICAO: string read FCNAEPRINCIPALDESCRICAO write FCNAEPRINCIPALDESCRICAO;
    property CNPJ: string read FCNPJ write FCNPJ;
    property COMPLEMENTO: string read FCOMPLEMENTO write FCOMPLEMENTO;
    property DATAABERTURA: string read FDATAABERTURA write FDATAABERTURA;
    property DDD: string read FDDD write FDDD;
    property EMAIL: string read FEMAIL write FEMAIL;
    property LOGRADOURO: string read FLOGRADOURO write FLOGRADOURO;
    property MUNICIPIO: string read FMUNICIPIO write FMUNICIPIO;
    property NOMEFANTASIA: string read FNOMEFANTASIA write FNOMEFANTASIA;
    property NUMERO: string read FNUMERO write FNUMERO;
    property RAZAOSOCIAL: string read FRAZAOSOCIAL write FRAZAOSOCIAL;
    property STATUS: string read FSTATUS write FSTATUS;
    property TELEFONE: string read FTELEFONE write FTELEFONE;
    property TIPOLOGRADOURO: string read FTIPOLOGRADOURO write FTIPOLOGRADOURO;
    property UF: string read FUF write FUF;
  end;
  
implementation

end.
