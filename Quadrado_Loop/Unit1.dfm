object Form1: TForm1
  Left = 340
  Top = 172
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 401
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 400
    Height = 400
    Caption = 'Panel1'
    TabOrder = 0
    DesignSize = (
      400
      400)
    object x: TPanel
      Left = 8
      Top = 0
      Width = 200
      Height = 200
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = 'x'
      Color = clNavy
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 24
    Top = 208
  end
end
