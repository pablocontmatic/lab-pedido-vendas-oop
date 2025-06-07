unit view.cliente.consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmConsultaCliente = class(TForm)
    edtConsulta: TEdit;
    cbbTipoConsulta: TComboBox;
    dbgrdCliente: TDBGrid;
    btnEditar: TButton;
    btnInserir: TButton;
    btnPesquisa: TButton;
    procedure btnInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

uses
  view.cliente.cadastro;

{$R *.dfm}

procedure TfrmConsultaCliente.btnInserirClick(Sender: TObject);
begin
  Application.CreateForm(TfrmCadastroclliente, frmCadastroclliente);
  try
    frmCadastroclliente.ShowModal;
  finally
    FreeAndNil(frmCadastroclliente);
  end;
end;

end.
