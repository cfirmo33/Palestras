unit Proxy.Model.Produto;

interface

uses Proxy.Model.Interfaces;

Type
  TModelProduto = class(TInterfacedObject, iModelProduto)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelProduto;
      function ConsultaID(Value : Integer) : iModelProduto;
  end;

implementation

uses
  System.SysUtils;

{ TModelProduto }

function TModelProduto.ConsultaID(Value: Integer): iModelProduto;
begin
  Result := Self;
  Sleep(5000);
end;

constructor TModelProduto.Create;
begin

end;

destructor TModelProduto.Destroy;
begin

  inherited;
end;

class function TModelProduto.New: iModelProduto;
begin
  Result := Self.Create;
end;

end.
