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
  Position = poMainFormCenter
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
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'uf'
        Width = 22
        Visible = True
      end>
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
    Top = 38
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = btnPesquisaClick
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 52
    Top = 107
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'codigo'
        DataType = ftInteger
      end
      item
        Name = 'nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'cidade'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'uf'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 52
    Top = 147
    Content = {
      4144425310000000CB010000FF00010001FF02FF03040016000000460044004D
      0065006D005400610062006C0065003100050016000000460044004D0065006D
      005400610062006C0065003100060000000000070000080032000000090000FF
      0AFF0B04000C00000063006F006400690067006F0005000C00000063006F0064
      00690067006F000C00010000000E000D000F0001100001110001120001130001
      14000115000C00000063006F006400690067006F00FEFF0B0400080000006E00
      6F006D0065000500080000006E006F006D0065000C00020000000E0016001700
      640000000F00011000011100011200011300011400011500080000006E006F00
      6D006500180064000000FEFF0B04000C00000063006900640061006400650005
      000C0000006300690064006100640065000C00030000000E0016001700640000
      000F000110000111000112000113000114000115000C00000063006900640061
      0064006500180064000000FEFF0B040004000000750066000500040000007500
      66000C00040000000E0016001700020000000F00011000011100011200011300
      0114000115000400000075006600180002000000FEFEFF19FEFF1AFEFF1BFEFE
      FEFF1CFEFF1DFF1EFEFEFE0E004D0061006E0061006700650072001E00550070
      0064006100740065007300520065006700690073007400720079001200540061
      0062006C0065004C006900730074000A005400610062006C00650008004E0061
      006D006500140053006F0075007200630065004E0061006D0065000A00540061
      00620049004400240045006E0066006F0072006300650043006F006E00730074
      007200610069006E00740073001E004D0069006E0069006D0075006D00430061
      00700061006300690074007900180043006800650063006B004E006F0074004E
      0075006C006C00140043006F006C0075006D006E004C006900730074000C0043
      006F006C0075006D006E00100053006F007500720063006500490044000E0064
      00740049006E0074003300320010004400610074006100540079007000650014
      00530065006100720063006800610062006C006500120041006C006C006F0077
      004E0075006C006C000800420061007300650014004F0041006C006C006F0077
      004E0075006C006C0012004F0049006E0055007000640061007400650010004F
      0049006E00570068006500720065001A004F0072006900670069006E0043006F
      006C004E0061006D00650018006400740041006E007300690053007400720069
      006E0067000800530069007A006500140053006F007500720063006500530069
      007A0065001C0043006F006E00730074007200610069006E0074004C00690073
      007400100056006900650077004C006900730074000E0052006F0077004C0069
      00730074001800520065006C006100740069006F006E004C006900730074001C
      0055007000640061007400650073004A006F00750072006E0061006C000E0043
      00680061006E00670065007300}
    object FDMemTable1codigo: TIntegerField
      FieldName = 'codigo'
    end
    object FDMemTable1nome: TStringField
      FieldName = 'nome'
      Size = 100
    end
    object FDMemTable1cidade: TStringField
      FieldName = 'cidade'
      Size = 100
    end
    object FDMemTable1uf: TStringField
      FieldName = 'uf'
      Size = 2
    end
  end
end
