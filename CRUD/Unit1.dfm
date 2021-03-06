object Form1: TForm1
  Left = 313
  Top = 116
  Width = 463
  Height = 500
  Caption = 'CRUD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 455
    Height = 469
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Label1: TLabel
        Left = 112
        Top = 120
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label2: TLabel
        Left = 112
        Top = 168
        Width = 95
        Height = 13
        Caption = 'Data de nascimento'
      end
      object Label3: TLabel
        Left = 112
        Top = 216
        Width = 67
        Height = 13
        Caption = 'Time preferido'
      end
      object edtNome: TEdit
        Left = 112
        Top = 136
        Width = 200
        Height = 21
        TabOrder = 0
      end
      object edtTime: TEdit
        Left = 112
        Top = 232
        Width = 200
        Height = 21
        TabOrder = 2
      end
      object edtData: TMaskEdit
        Left = 112
        Top = 184
        Width = 65
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '  /  /    '
      end
      object Cadastrar: TButton
        Left = 112
        Top = 264
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 3
        OnClick = CadastrarClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object Label5: TLabel
        Left = 48
        Top = 24
        Width = 97
        Height = 13
        Caption = 'M'#233'todo de Pesquisa'
      end
      object Label6: TLabel
        Left = 64
        Top = 112
        Width = 77
        Height = 13
        Caption = 'Dado procurado'
      end
      object edtPesquisar: TEdit
        Left = 0
        Top = 128
        Width = 199
        Height = 21
        TabOrder = 0
      end
      object btnPesquisar: TButton
        Left = 56
        Top = 168
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 1
        OnClick = btnPesquisarClick
      end
      object Memo1: TMemo
        Left = 232
        Top = 40
        Width = 193
        Height = 401
        ReadOnly = True
        TabOrder = 2
      end
      object ComboBox1: TComboBox
        Left = 0
        Top = 39
        Width = 201
        Height = 21
        AutoDropDown = True
        AutoCloseUp = True
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 3
        Sorted = True
        TabOrder = 3
        Text = 'Time'
        Items.Strings = (
          'Data de nascimento'
          'ID'
          'Nome'
          'Time')
      end
      object ListBox1: TListBox
        Left = 456
        Top = 88
        Width = 121
        Height = 97
        Enabled = False
        ItemHeight = 13
        TabOrder = 4
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Atualizar'
      ImageIndex = 2
      object Label7: TLabel
        Left = 8
        Top = 72
        Width = 28
        Height = 13
        Caption = 'Nome'
      end
      object Label8: TLabel
        Left = 8
        Top = 120
        Width = 95
        Height = 13
        Caption = 'Data de nascimento'
      end
      object Label9: TLabel
        Left = 8
        Top = 168
        Width = 67
        Height = 13
        Caption = 'Time preferido'
      end
      object Label4: TLabel
        Left = 8
        Top = 0
        Width = 120
        Height = 20
        Caption = 'ID do cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtNomeNovo: TEdit
        Left = 8
        Top = 88
        Width = 199
        Height = 21
        TabOrder = 0
      end
      object edtTimeNovo: TEdit
        Left = 8
        Top = 184
        Width = 199
        Height = 21
        TabOrder = 1
      end
      object edtDataNovo: TMaskEdit
        Left = 8
        Top = 136
        Width = 65
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 2
        Text = '  /  /    '
      end
      object Button2: TButton
        Left = 8
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        TabOrder = 3
        OnClick = Button2Click
      end
      object edtIdUpdate: TEdit
        Left = 8
        Top = 24
        Width = 57
        Height = 21
        TabOrder = 4
      end
      object Memo2: TMemo
        Left = 240
        Top = 8
        Width = 201
        Height = 425
        ReadOnly = True
        TabOrder = 5
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Remover'
      ImageIndex = 3
      object Label11: TLabel
        Tag = 2
        Left = 160
        Top = 152
        Width = 120
        Height = 20
        Caption = 'ID do cadastro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtIdRemover: TEdit
        Left = 192
        Top = 176
        Width = 57
        Height = 21
        TabOrder = 0
        OnChange = edtIdRemoverChange
      end
      object Memo3: TMemo
        Left = 0
        Top = 272
        Width = 441
        Height = 161
        ReadOnly = True
        TabOrder = 1
      end
      object btnRemover: TBitBtn
        Tag = 2
        Left = 184
        Top = 224
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 2
        OnClick = btnRemoverClick
        Kind = bkAbort
      end
      object JvDice1: TJvDice
        Left = 56
        Top = 48
        Width = 66
        Height = 66
        Interval = 300
        Rotate = True
        TabOrder = 3
        Value = 2
        OnClick = JvDice1Click
      end
      object JvZoom1: TJvZoom
        Left = 32
        Top = 24
        Width = 100
        Height = 100
        DotNetHighlighting = True
        Crosshair = True
        CrosshairColor = 2697513
      end
      object JvSwitch1: TJvSwitch
        Left = 320
        Top = 56
        Width = 50
        Height = 60
        Caption = '0'
        TabOrder = 5
        OnClick = JvSwitch1Click
      end
    end
  end
end
