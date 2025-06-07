unit view.cliente.cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroclliente: TfrmCadastroclliente;

implementation

uses
  view.cidade.consulta;

{$R *.dfm}

procedure TfrmCadastroclliente.btnBuscaCidadeClick(Sender: TObject);
begin
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  try
    if frmConsultaCidade.ShowModal = mrOk then
    begin

      edtNomeCidade.Text := frmConsultaCidade.Cidade;
      edtUFCidade.Text := frmConsultaCidade.UF;
    end;
  finally
    FreeAndNil(frmConsultaCidade);
  end;
end;

end.
