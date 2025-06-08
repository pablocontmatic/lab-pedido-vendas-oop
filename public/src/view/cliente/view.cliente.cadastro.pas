unit view.cliente.cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList,
  System.ImageList;

type
  TfrmCadastroclliente = class(TForm)
    edtNome: TEdit;
    lblnome: TLabel;
    lblCidade: TLabel;
    edtNomeCidade: TEdit;
    edtUFCidade: TEdit;
    btnBuscaCidade: TButton;
    ilimage: TImageList;
    btnSalvar: TButton;
    btnCancelar: TButton;
    lblIF: TLabel;
    procedure btnBuscaCidadeClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    FcodigoCidade: integer;
    procedure SetcodigoCidade(const Value: integer);
    { Private declarations }
  public
    { Public declarations }
    property codigoCidade: integer read FcodigoCidade write SetcodigoCidade;
  end;

var
  frmCadastroclliente: TfrmCadastroclliente;

implementation

uses
  view.cidade.consulta, controller.cliente, interfaces.controller.cliente,
  interfaces.cliente, entidade.cliente;

{$R *.dfm}

procedure TfrmCadastroclliente.btnBuscaCidadeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  try
    if frmConsultaCidade.ShowModal = mrOk then
    begin
      codigoCidade := frmConsultaCidade.codigoCidade;
      edtNomeCidade.Text := frmConsultaCidade.Cidade;
      edtUFCidade.Text := frmConsultaCidade.UF;
    end;
  finally
    FreeAndNil(frmConsultaCidade);
  end;
end;

procedure TfrmCadastroclliente.btnSalvarClick(Sender: TObject);
var
  controllerCLiente: IControllerCliente;
  LCliente: TCliente;
begin
  controllerCliente := TControllerCliente.Create;
  LCliente := TCliente.Create(EdtNome.Text, codigoCidade);
  try
    controllerCliente.CadastrarCliente(LCliente);
  finally
    FreeAndNil(LCliente);
  end;
end;

procedure TfrmCadastroclliente.SetcodigoCidade(const Value: integer);
begin
  FcodigoCidade := Value;
end;

end.
