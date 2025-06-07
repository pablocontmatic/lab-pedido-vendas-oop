unit view.cidade.consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmConsultaCidade = class(TForm)
    edtConsulta: TEdit;
    cbbTipoConsulta: TComboBox;
    dbgrdCliente: TDBGrid;
    btnEditar: TButton;
    btnInserir: TButton;
    btnPesquisa: TButton;
    procedure dbgrdClienteDblClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
  private
    FCodigoCidade: Integer;
    FUF: string;
    FCidade: string;
    { Private declarations }
  public
    { Public declarations }
    property codigoCidade: Integer read FCodigoCidade write FCodigoCidade;
    property Cidade: string read FCidade write FCidade;
    property UF: string read FUF write FUF;
  end;

var
  frmConsultaCidade: TfrmConsultaCidade;

implementation

uses
  view.cidade.cadastro;

{$R *.dfm}

procedure TfrmConsultaCidade.btnInserirClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroCidade, frmCadastroCidade);
  try
    frmCadastroCidade.showModal;
  finally
    FreeAndNil(frmCadastroCidade);
  end;
end;

procedure TfrmConsultaCidade.dbgrdClienteDblClick(Sender: TObject);
begin
  FcodigoCidade := 1;
  Fcidade := 'Pedranópolis';
  FUF := 'SP';
  ModalResult := mrOk;
end;

end.
