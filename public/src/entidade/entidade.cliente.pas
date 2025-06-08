unit entidade.cliente;

interface

uses
  interfaces.cliente, entidade.cidade, System.Generics.Collections;

type
  TCliente = class(TInterfacedObject, ICliente)
  private
    FCodigo: integer;
    FNome: String;
    FCidade: TCidade;
    procedure SetCidade(const Value: TCidade);
    procedure SetCodigo(const Value: integer);
    procedure SetNome(const Value: String);
  published

    constructor create(nome: string; codigoCidade: Integer);
    destructor destroy; override;
    property Codigo: integer read FCodigo write SetCodigo;
    property Nome: String read FNome write SetNome;
    property Cidade: TCidade read FCidade write SetCidade;

  end;

  TListaCliente = class(TObjectList<TCliente>)
    constructor create;
    destructor destroy; override;
  end;

implementation

{ TCliente }

constructor TCliente.create(nome: string; codigoCidade: Integer);
begin
  FNome := nome;
  FCidade := TCidade.Create;
  FCidade.codigo := codigoCidade;
end;

destructor TCliente.destroy;
begin
  FCidade.Free;
  inherited;
end;

procedure TCliente.SetCidade(const Value: TCidade);
begin
  FCidade := Value;
end;

procedure TCliente.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
end;

procedure TCliente.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TListaCliente }

constructor TListaCliente.create;
begin
  Self.OwnsObjects := true;
end;

destructor TListaCliente.destroy;
begin

  inherited;
end;

end.
