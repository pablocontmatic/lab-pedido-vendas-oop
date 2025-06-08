unit view.cliente.consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.FireDACJSONReflect,
  FireDAC.Stan.StorageBin;

type
  TfrmConsultaCliente = class(TForm)
    edtConsulta: TEdit;
    cbbTipoConsulta: TComboBox;
    dbgrdCliente: TDBGrid;
    btnEditar: TButton;
    btnInserir: TButton;
    btnPesquisa: TButton;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    FDMemTable1codigo: TIntegerField;
    FDMemTable1nome: TStringField;
    FDMemTable1cidade: TStringField;
    FDMemTable1uf: TStringField;
    procedure btnInserirClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

uses
  view.cliente.cadastro, controller.cliente, interfaces.controller.cliente;

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

procedure TfrmConsultaCliente.btnPesquisaClick(Sender: TObject);
var
  controllerCLiente: IControllerCliente;
begin
  controllerCliente := TControllerCliente.Create;
  controllerCliente.LoadClientes(FDMemTable1);
end;

end.
