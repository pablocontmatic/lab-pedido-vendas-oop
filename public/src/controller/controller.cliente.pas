unit controller.cliente;

interface

uses
  interfaces.controller.cliente, DAO.cliente,  interfaces.DAO.Cliente,
  entidade.cliente, FireDAC.Comp.Client;

type
  TControllerCliente = class(TInterfacedObject, IControllerCliente)
    function LoadClientes(out ATable: TFDMemTable): Boolean;
    function CadastrarCliente(ACliente: TCliente): Boolean;
  end;

implementation

{ TControllerCliente }

function TControllerCliente.CadastrarCliente(ACliente: TCliente): Boolean;
var
  LDAOCliente: IDAOCliente;
begin
  LDAOCliente := TDAOCliente.Create;

  result := LDAOCliente.cadastrarCliente(ACliente);
end;

function TControllerCliente.LoadClientes(out ATable: TFDMemTable): Boolean;
var
  LDAOCliente: IDAOCliente;
begin
  LDAOCliente := TDAOCliente.Create;

  result := LDAOCliente.loadClientes(ATable);
end;

end.
