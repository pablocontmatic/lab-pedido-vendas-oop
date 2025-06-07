unit view.principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnCLiente: TButton;
    btnProduto: TButton;
    btnVenda: TButton;
    procedure btnCLienteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  view.cliente.consulta;

{$R *.dfm}

procedure TfrmPrincipal.btnCLienteClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  try
    frmConsultaCliente.ShowModal;
  finally
    FreeAndNil(frmConsultaCliente);
  end;
end;

end.
