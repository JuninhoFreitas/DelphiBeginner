object Form1: TForm1
  Left = 307
  Top = 184
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = 'Ping - 2Players'
  ClientHeight = 350
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object campo: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 350
    Align = alClient
    Color = clCaptionText
    TabOrder = 0
    object pontosJogador: TLabel
      Left = 16
      Top = 16
      Width = 9
      Height = 19
      Caption = '0'
      Color = clBtnText
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Montserrat'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pontosComputador: TLabel
      Left = 773
      Top = 14
      Width = 9
      Height = 19
      Caption = '0'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Montserrat'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object infoBolaFinal: TLabel
      Left = 232
      Top = 56
      Width = 66
      Height = 13
      Caption = 'Final = TOP:Y'
      Color = 10930928
      ParentColor = False
      Visible = False
    end
    object infoSaidaBola: TLabel
      Left = 128
      Top = 56
      Width = 85
      Height = 13
      Caption = 'Top=Y Y=Positivo'
      Color = 10930928
      ParentColor = False
      Visible = False
    end
    object jogador: TPanel
      Left = 32
      Top = 96
      Width = 10
      Height = 150
      Color = clWhite
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 0
        Width = 10
        Height = 50
        Align = alCustom
        Color = clRed
        ParentColor = False
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 100
        Width = 10
        Height = 50
        Align = alCustom
        Color = clRed
        ParentColor = False
      end
    end
    object computador: TPanel
      Left = 758
      Top = 96
      Width = 10
      Height = 150
      Color = clWhite
      TabOrder = 1
      object Splitter3: TSplitter
        Left = 0
        Top = 0
        Width = 10
        Height = 50
        Align = alCustom
        Color = clLime
        ParentColor = False
      end
      object Splitter4: TSplitter
        Left = 0
        Top = 100
        Width = 10
        Height = 50
        Align = alCustom
        Color = clLime
        ParentColor = False
      end
    end
    object bola: TPanel
      Left = 732
      Top = 6
      Width = 25
      Height = 25
      Color = clWhite
      TabOrder = 2
    end
    object Panel1: TPanel
      Left = 176
      Top = 128
      Width = 433
      Height = 161
      Color = clMenuHighlight
      TabOrder = 3
      OnEnter = Panel1Enter
      object Button1: TButton
        Left = 48
        Top = 48
        Width = 129
        Height = 65
        Caption = 'SINGLEPLAYER'
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 240
        Top = 48
        Width = 129
        Height = 65
        Caption = 'MULTIPLAYER'
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object tempoBola: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tempoBolaTimer
    Left = 184
    Top = 8
  end
  object tempoComputador: TTimer
    Enabled = False
    Interval = 10
    OnTimer = tempoComputadorTimer
    Left = 264
    Top = 8
  end
  object estadosJogo: TTimer
    Interval = 100
    OnTimer = estadosJogoTimer
    Left = 120
    Top = 8
  end
  object podertim: TTimer
    Interval = 30
    Left = 464
    Top = 8
  end
  object contador: TTimer
    Interval = 3000
    OnTimer = contadorTimer
    Left = 576
    Top = 8
  end
end
