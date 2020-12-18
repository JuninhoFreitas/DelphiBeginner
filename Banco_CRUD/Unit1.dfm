object Form1: TForm1
  Left = 337
  Top = 106
  Width = 420
  Height = 481
  Caption = 'CRUD + FIREBIRD'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 412
    Height = 450
    ActivePage = TabSheet4
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Cadastrar'
      object Label1: TLabel
        Left = 40
        Top = 80
        Width = 83
        Height = 13
        Caption = 'Nome do Produto'
      end
      object Label2: TLabel
        Left = 40
        Top = 128
        Width = 78
        Height = 13
        Caption = 'Valor do produto'
      end
      object Label3: TLabel
        Left = 40
        Top = 168
        Width = 55
        Height = 13
        Caption = 'Quantidade'
      end
      object Label4: TLabel
        Left = 40
        Top = 208
        Width = 92
        Height = 13
        Caption = 'Unidade de medida'
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 96
        Width = 320
        Height = 21
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DM.SourceInsert
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 144
        Width = 320
        Height = 21
        DataField = 'PRECO'
        DataSource = DM.SourceInsert
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 184
        Width = 320
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'QUANTIDADE'
        DataSource = DM.SourceInsert
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 40
        Top = 224
        Width = 320
        Height = 21
        DataField = 'UNID_MEDIDA'
        DataSource = DM.SourceInsert
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 0
        Top = 0
        Width = 404
        Height = 25
        DataSource = DM.SourceInsert
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel, nbRefresh]
        Align = alTop
        Flat = True
        TabOrder = 4
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Consultar'
      ImageIndex = 1
      object textoPesquisa: TLabel
        Left = 32
        Top = 200
        Width = 92
        Height = 13
        Caption = 'Pesquisa por Nome'
      end
      object DBNavigator2: TDBNavigator
        Left = 0
        Top = 0
        Width = 404
        Height = 25
        DataSource = DM.SourceConsulta
        Align = alTop
        Flat = True
        TabOrder = 0
      end
      object edtNome: TEdit
        Left = 32
        Top = 216
        Width = 321
        Height = 21
        TabOrder = 1
      end
      object btnPesquisar: TButton
        Left = 152
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Pesquisar'
        TabOrder = 2
        OnClick = btnPesquisarClick
      end
      object selecionarPesquisa: TJvComboBox
        Left = 120
        Top = 80
        Width = 145
        Height = 21
        AutoDropDown = True
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        Text = 'ID'
        OnChange = selecionarPesquisaChange
        Items.Strings = (
          'ID'
          'NOME'
          'PRE'#199'O'
          'QUANTIDADE'
          'UNIDADE DE MEDIDA')
        ItemIndex = 0
      end
      object DBGrid1: TDBGrid
        Left = 32
        Top = 248
        Width = 320
        Height = 120
        DataSource = DM.SourceConsulta
        ReadOnly = True
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object RadioGroup1: TRadioGroup
        Left = 72
        Top = 144
        Width = 233
        Height = 49
        Caption = 'Modo de Pesquisa'
        TabOrder = 5
      end
      object RadioButton1: TRadioButton
        Left = 88
        Top = 164
        Width = 81
        Height = 17
        Caption = 'Exata'
        Checked = True
        TabOrder = 6
        TabStop = True
      end
      object RadioButton2: TRadioButton
        Left = 215
        Top = 164
        Width = 74
        Height = 17
        Caption = 'Aproximada'
        TabOrder = 7
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Atualizar'
      ImageIndex = 2
      object DBEdit5: TDBEdit
        Left = 40
        Top = 96
        Width = 320
        Height = 21
        Ctl3D = True
        DataField = 'DESCRICAO'
        DataSource = DM.SourceUpdate
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit6: TDBEdit
        Left = 40
        Top = 144
        Width = 320
        Height = 21
        DataField = 'PRECO'
        DataSource = DM.SourceUpdate
        TabOrder = 1
      end
      object DBEdit7: TDBEdit
        Left = 40
        Top = 184
        Width = 320
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'QUANTIDADE'
        DataSource = DM.SourceUpdate
        ParentBiDiMode = False
        TabOrder = 2
      end
      object DBEdit8: TDBEdit
        Left = 40
        Top = 224
        Width = 320
        Height = 21
        DataField = 'UNID_MEDIDA'
        DataSource = DM.SourceUpdate
        TabOrder = 3
      end
      object DBNavigator3: TDBNavigator
        Left = 0
        Top = 0
        Width = 404
        Height = 25
        DataSource = DM.SourceInsert
        Align = alTop
        Flat = True
        TabOrder = 4
      end
      object DBGrid2: TDBGrid
        Left = 40
        Top = 272
        Width = 321
        Height = 120
        DataSource = DM.SourceUpdate
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBEdit9: TDBEdit
        Left = 144
        Top = 56
        Width = 89
        Height = 21
        DataField = 'ID'
        DataSource = DM.SourceUpdate
        TabOrder = 6
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Deletar'
      ImageIndex = 3
      object k: TDBGrid
        Left = 16
        Top = 104
        Width = 320
        Height = 120
        DataSource = DM.DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
      object DBNavigator4: TDBNavigator
        Left = 48
        Top = 32
        Width = 234
        Height = 25
        DataSource = DM.DataSource1
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
        TabOrder = 1
      end
    end
  end
end
