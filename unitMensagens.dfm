object formMensagens: TformMensagens
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 184
  ClientWidth = 532
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 532
    Height = 184
    Align = alClient
    Caption = 'pnlFundo'
    TabOrder = 0
    ExplicitWidth = 572
    ExplicitHeight = 191
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 530
      Height = 182
      Align = alClient
      ExplicitWidth = 570
      ExplicitHeight = 184
    end
    object lblTituloJanela: TLabel
      Left = 16
      Top = 15
      Width = 74
      Height = 21
      Caption = 'ATEN'#199#195'O'
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object imgIcone: TImage
      Left = 16
      Top = 55
      Width = 74
      Height = 72
      ParentShowHint = False
      ShowHint = False
    end
    object lblTituloMsg: TLabel
      Left = 110
      Top = 55
      Width = 37
      Height = 17
      Caption = 'Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMsg: TLabel
      Left = 128
      Top = 80
      Width = 381
      Height = 38
      AutoSize = False
      Caption = 'Mensagem para o usu'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
    end
    object Panel2: TPanel
      Left = 0
      Top = 42
      Width = 531
      Height = 1
      Caption = 'Panel2'
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 212
      Top = 130
      Width = 297
      Height = 41
      BevelOuter = bvNone
      TabOrder = 1
      object pnlNao: TPanel
        Left = -38
        Top = 0
        Width = 183
        Height = 41
        BevelOuter = bvNone
        Color = 14869218
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6711039
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btNao: TSpeedButton
          Left = 38
          Top = 0
          Width = 145
          Height = 41
          Cursor = crHandPoint
          Caption = 'N'#195'O (ESC)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btNaoClick
        end
      end
      object pnlSim: TPanel
        Left = 160
        Top = 0
        Width = 137
        Height = 41
        BevelOuter = bvNone
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clInactiveBorder
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object btSim: TSpeedButton
          Left = 1
          Top = 0
          Width = 134
          Height = 41
          Cursor = crHandPoint
          Caption = 'SIM (ENTER)'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btSimClick
        end
      end
    end
  end
end
