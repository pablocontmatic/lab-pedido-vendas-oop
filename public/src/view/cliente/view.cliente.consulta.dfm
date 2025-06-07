object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta cliente'
  ClientHeight = 239
  ClientWidth = 408
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object edtConsulta: TEdit
    Left = 120
    Top = 39
    Width = 194
    Height = 21
    TabOrder = 0
  end
  object cbbTipoConsulta: TComboBox
    Left = 9
    Top = 39
    Width = 105
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = 'C'#243'digo'
    Items.Strings = (
      'C'#243'digo'
      'Nome')
  end
  object dbgrdCliente: TDBGrid
    Left = 0
    Top = 71
    Width = 408
    Height = 168
    Align = alBottom
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnEditar: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 3
  end
  object btnInserir: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 4
    OnClick = btnInserirClick
  end
  object btnPesquisa: TButton
    Left = 320
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
  end
end
