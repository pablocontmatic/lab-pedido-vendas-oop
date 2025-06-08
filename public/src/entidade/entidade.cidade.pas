unit entidade.cidade;

interface

uses
  interfaces.cidade;

type
  TCidade = class(TInterfacedObject, ICidade)
  private
    FUF: string;
    Fcodigo: Integer;
    Fcidade: string;
    procedure Setcidade(const Value: string);
    procedure Setcodigo(const Value: Integer);
    procedure SetUF(const Value: string);
  published
    property codigo: Integer read Fcodigo write Setcodigo;
    property cidade: string read Fcidade write Setcidade;
    property UF: string read FUF write SetUF;

  end;

implementation

{ TCidade }

procedure TCidade.Setcidade(const Value: string);
begin
  Fcidade := Value;
end;

procedure TCidade.Setcodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TCidade.SetUF(const Value: string);
begin
  FUF := Value;
end;

end.
