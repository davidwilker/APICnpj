object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'API Consulta CNPJ'
  ClientHeight = 285
  ClientWidth = 792
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 53
    Width = 30
    Height = 16
    Caption = 'CNPJ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 212
    Top = 12
    Width = 363
    Height = 35
    Caption = 'Cadastro Pessoa Jur'#237'dica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 276
    Top = 53
    Width = 81
    Height = 16
    Caption = 'Raz'#227'o Social'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 112
    Width = 91
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 320
    Top = 112
    Width = 105
    Height = 13
    Caption = 'Concordancia Verbal: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 488
    Top = 112
    Width = 28
    Height = 13
    Caption = 'NIRE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 19
    Top = 139
    Width = 88
    Height = 13
    Caption = 'Data do Contrato:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 212
    Top = 139
    Width = 86
    Height = 13
    Caption = 'N'#186' Alter. Contrat:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 440
    Top = 139
    Width = 76
    Height = 13
    Caption = 'Nome da Junta:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 23
    Top = 168
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 40
    Top = 195
    Width = 32
    Height = 13
    Caption = 'Bairro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 424
    Top = 195
    Width = 37
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label13: TLabel
    Left = 673
    Top = 195
    Width = 33
    Height = 13
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 26
    Top = 222
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label15: TLabel
    Left = 671
    Top = 222
    Width = 23
    Height = 13
    Caption = 'CEP:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 297
    Top = 222
    Width = 24
    Height = 13
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 9
    Top = 249
    Width = 63
    Height = 13
    Caption = 'Obseva'#231#245'es:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object btBuscar: TBitBtn
    Left = 151
    Top = 75
    Width = 119
    Height = 21
    Caption = 'Buscar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C06F6F6FE5E5E5FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACA1A1A
      1A8C8C8C6C6C6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFDCDCDC161616000000161616BDBDBDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC2727270000001212
      12C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F18E8E8E5555555454548C
      8C8CEFEFEF636363000000222222D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      CECECE1A1A1A0303032D2D2D2E2E2E040404171717C0C0C0606060E8E8E8FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F21A1A1A282828D3D3D3FFFFFFFFFFFFD7
      D7D72D2D2D171717EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292
      010101D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFD7D7D70404048C8C8CFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF5B5B5B262626FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF2E2E2E545454FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5C5C5C
      252525FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2D2D2D555555FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF959595010101CECECEFFFFFFFFFFFFFFFFFFFF
      FFFFD3D3D30303038E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3
      1D1D1D252525CECECEFFFFFFFFFFFFD2D2D22828281A1A1AF1F1F1FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD2D2D21D1D1D01010124242426262601
      01011A1A1ACECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFF3F3F39595955D5D5D5C5C5C929292F2F2F2FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 0
    OnClick = btBuscarClick
  end
  object editSexo: TEdit
    Left = 431
    Top = 109
    Width = 40
    Height = 21
    TabOrder = 1
  end
  object editNumAlterContrat: TEdit
    Left = 304
    Top = 136
    Width = 117
    Height = 21
    TabOrder = 2
  end
  object btGravar: TButton
    Left = 19
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 3
    OnClick = btGravarClick
  end
  object btAlterar: TButton
    Left = 113
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 4
    OnClick = btAlterarClick
  end
  object editCnpj: TEdit
    Left = 16
    Top = 75
    Width = 129
    Height = 21
    TabOrder = 5
    OnChange = editCnpjChange
  end
  object editRazaoSocial: TEdit
    Left = 276
    Top = 75
    Width = 501
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
  end
  object editInscricaoEstadual: TEdit
    Left = 113
    Top = 109
    Width = 185
    Height = 21
    TabOrder = 7
  end
  object editNire: TEdit
    Left = 522
    Top = 109
    Width = 255
    Height = 21
    TabOrder = 8
  end
  object editDataContrato: TEdit
    Left = 113
    Top = 136
    Width = 88
    Height = 21
    TabOrder = 9
  end
  object editJunta: TEdit
    Left = 522
    Top = 136
    Width = 255
    Height = 21
    TabOrder = 10
  end
  object editRua: TEdit
    Left = 78
    Top = 165
    Width = 699
    Height = 21
    TabOrder = 11
  end
  object editBairro: TEdit
    Left = 78
    Top = 192
    Width = 340
    Height = 21
    TabOrder = 12
  end
  object editCidade: TEdit
    Left = 467
    Top = 192
    Width = 190
    Height = 21
    TabOrder = 13
  end
  object editTelefone: TEdit
    Left = 78
    Top = 219
    Width = 204
    Height = 21
    TabOrder = 14
    OnChange = editTelefoneChange
  end
  object editEstado: TEdit
    Left = 712
    Top = 192
    Width = 63
    Height = 21
    TabOrder = 15
  end
  object editCep: TEdit
    Left = 700
    Top = 219
    Width = 75
    Height = 21
    TabOrder = 16
    OnChange = editCepChange
  end
  object editObs: TEdit
    Left = 78
    Top = 246
    Width = 697
    Height = 21
    TabOrder = 17
  end
  object editEmail: TEdit
    Left = 327
    Top = 219
    Width = 330
    Height = 21
    TabOrder = 18
  end
  object idHTTP: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 656
    Top = 20
  end
  object OpenSSL: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 600
    Top = 20
  end
end