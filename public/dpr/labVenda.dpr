program labVenda;

uses
  Vcl.Forms,
  interfaces.cidade in '..\src\interfaces\interfaces.cidade.pas',
  interfaces.cliente in '..\src\interfaces\interfaces.cliente.pas',
  interfaces.item in '..\src\interfaces\interfaces.item.pas',
  interfaces.pedido in '..\src\interfaces\interfaces.pedido.pas',
  interfaces.produto in '..\src\interfaces\interfaces.produto.pas',
  entidade.produto in '..\src\entidade\entidade.produto.pas',
  entidade.cliente in '..\src\entidade\entidade.cliente.pas',
  entidade.cidade in '..\src\entidade\entidade.cidade.pas',
  entidade.pedido in '..\src\entidade\entidade.pedido.pas',
  entidade.item in '..\src\entidade\entidade.item.pas',
  service.produto in '..\src\service\service.produto.pas',
  service.cliente in '..\src\service\service.cliente.pas',
  service.cidade in '..\src\service\service.cidade.pas',
  service.pedido in '..\src\service\service.pedido.pas',
  service.item in '..\src\service\service.item.pas',
  view.principal in '..\src\view\view.principal.pas' {frmPrincipal},
  view.cliente.consulta in '..\src\view\cliente\view.cliente.consulta.pas' {frmConsultaCliente},
  view.cliente.cadastro in '..\src\view\cliente\view.cliente.cadastro.pas' {frmCadastroclliente},
  view.cidade.consulta in '..\src\view\cidade\view.cidade.consulta.pas' {frmConsultaCidade},
  view.cidade.cadastro in '..\src\view\cidade\view.cidade.cadastro.pas' {frmCadastroCidade};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmConsultaCliente, frmConsultaCliente);
  Application.CreateForm(TfrmCadastroclliente, frmCadastroclliente);
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  Application.CreateForm(TfrmCadastroCidade, frmCadastroCidade);
  Application.Run;
end.
