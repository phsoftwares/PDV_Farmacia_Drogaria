program FarmaciaP;

uses
  Vcl.Forms,
  principalU in 'principalU.pas' {frmPrincipal},
  dmU in 'dmU.pas' {dmFarmacia: TDataModule},
  modeloListaU in 'modeloListaU.pas' {frmModeloLista},
  clienteListaU in 'clienteListaU.pas' {frmClienteListaU},
  modeloDadosU in 'modeloDadosU.pas' {frmModeloDados},
  clienteDadosU in 'clienteDadosU.pas' {frmClienteDados},
  funcionarioListaU in 'funcionarioListaU.pas' {frmFuncionarioListaU},
  funcionarioDadosU in 'funcionarioDadosU.pas' {frmFuncionarioDados},
  produtoListaU in 'produtoListaU.pas' {frmProdutoListaU},
  produtoDadosU in 'produtoDadosU.pas' {frmProdutoDados},
  identificaClienteU in 'identificaClienteU.pas' {frmIdentificaConta},
  NovoDepositoU in 'NovoDepositoU.pas' {frmDeposito},
  pontoVendaU in 'pontoVendaU.pas' {frmPontoVenda},
  identificaClientePDVU in 'identificaClientePDVU.pas' {frmIdentificaContaPDV},
  depositaTrocoU in 'depositaTrocoU.pas' {frmdepositaTroco},
  fastReportClienteU in 'fastReportClienteU.pas' {frmRelatorio};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  AApplication.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmFarmacia, dmFarmacia);
  Application.CreateForm(TfrmRelatorio, frmRelatorio);
  pplication.Run;
end.
