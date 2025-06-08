unit DAO.cliente;

interface

uses
  interfaces.DAO.Cliente,
  entidade.cliente,
  Data.FireDACJSONReflect,
  entidade.query,
  interfaces.query,
  System.SysUtils,
  FireDAC.Comp.Client;

type
  TDAOCliente = class(TInterfacedObject, IDAOCliente)
    constructor create;
    destructor destroy; override;
    function loadClientes(ATable: TFDMemTable): Boolean;
    function CadastrarCliente(ACliente: TCliente): Boolean;
  end;

implementation

{ TDAOCliente }

function TDAOCliente.CadastrarCliente(ACliente: TCliente): Boolean;
var
  LQuery : IQuery;                                                    //'+ACliente.Nome+'
begin                                                                   //     '+ACliente.Cidade.codigo+'
  LQuery := TQuery.create;

  result := LQuery.executar('INSERT INTO CLIENTE (NOME, CODIGOCIDADE) VALUES  ('+quotedStr(ACliente.Nome)+', '+ACliente.Cidade.codigo.ToString+')');
end;

constructor TDAOCliente.create;
begin

end;

destructor TDAOCliente.destroy;
begin

  inherited;
end;

function TDAOCliente.loadClientes(ATable: TFDMemTable): Boolean;
var
  LQuery : IQuery;
begin
  LQuery := TQuery.create;

  LQuery.Open(ATable, 'SELECT C.CODIGO, C.NOME, CID.CIDADE, CID.UF FROM CLIENTE C LEFT JOIN CIDADE CID ON CID.CODIGO = C.CODIGOCIDADE');

end;

end.
