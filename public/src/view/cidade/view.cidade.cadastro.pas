unit view.cidade.cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastroCidade = class(TForm)
    edtNome: TEdit;
    lblnome: TLabel;
    edtUFCidade: TEdit;
    btnSalvar: TButton;
    btnCancelar: TButton;
    lblUF: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidade: TfrmCadastroCidade;

implementation

{$R *.dfm}

end.
