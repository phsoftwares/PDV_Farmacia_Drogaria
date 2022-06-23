unit clienteDadosU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, modeloDadosU, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmClienteDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label5: TLabel;
    dbeSenha: TDBEdit;
    Label6: TLabel;
    dbeCurso: TDBEdit;
    Label7: TLabel;
    dbeEscola: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeCadastro: TDBEdit;
    Label10: TLabel;
    dbeInativo: TDBEdit;
    dbcAtivo: TDBComboBox;
    dbcSexo: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteDados: TfrmClienteDados;

implementation

{$R *.dfm}

  uses dmU;

procedure TfrmClienteDados.btnSalvarClick(Sender: TObject);

begin

  if dmFarmacia.fdtbClientec_ativo.Value = 'S' then
  begin
    dmFarmacia.fdtbClientec_data_cadastro.Value := now;
  end
  else
  begin
      if dmFarmacia.fdtbClientec_ativo.Value = 'N' then
  begin
    dmFarmacia.fdtbClientec_data_inativo.Value := now;
  end
  end;

  dmFarmacia.fdtbCliente.Post;


end;

end.
