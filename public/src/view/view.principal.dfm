object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Vendas'
  ClientHeight = 139
  ClientWidth = 254
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
  object btnCLiente: TButton
    Left = 88
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Cliente'
    TabOrder = 0
    OnClick = btnCLienteClick
  end
  object btnProduto: TButton
    Left = 88
    Top = 55
    Width = 75
    Height = 25
    Caption = 'Produto'
    TabOrder = 1
  end
  object btnVenda: TButton
    Left = 88
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Venda'
    TabOrder = 2
  end
end
