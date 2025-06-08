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
  view.principal in '..\src\view\view.principal.pas' {frmPrincipal},
  view.cliente.consulta in '..\src\view\cliente\view.cliente.consulta.pas' {frmConsultaCliente},
  view.cliente.cadastro in '..\src\view\cliente\view.cliente.cadastro.pas' {frmCadastroclliente},
  view.cidade.consulta in '..\src\view\cidade\view.cidade.consulta.pas' {frmConsultaCidade},
  view.cidade.cadastro in '..\src\view\cidade\view.cidade.cadastro.pas' {frmCadastroCidade},
  entidade.configuracao in '..\src\entidade\entidade.configuracao.pas',
  controller.cidade in '..\src\controller\controller.cidade.pas',
  controller.cliente in '..\src\controller\controller.cliente.pas',
  controller.item in '..\src\controller\controller.item.pas',
  controller.pedido in '..\src\controller\controller.pedido.pas',
  controller.produto in '..\src\controller\controller.produto.pas',
  DAO.cliente in '..\src\DAO\DAO.cliente.pas',
  interfaces.conexao in '..\src\interfaces\interfaces.conexao.pas',
  interfaces.configuracao in '..\src\interfaces\interfaces.configuracao.pas',
  interfaces.controller.cliente in '..\src\interfaces\interfaces.controller.cliente.pas',
  interfaces.DAO.cliente in '..\src\interfaces\interfaces.DAO.cliente.pas',
  interfaces.query in '..\src\interfaces\interfaces.query.pas',
  entidade.conexao in '..\src\entidade\conexao\entidade.conexao.pas',
  entidade.query in '..\src\entidade\conexao\entidade.query.pas',
  interfaces.controller.cidade in '..\src\interfaces\interfaces.controller.cidade.pas',
  DAO.cidade in '..\src\DAO\DAO.cidade.pas',
  interfaces.DAO.cidade in '..\src\interfaces\interfaces.DAO.cidade.pas';

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
