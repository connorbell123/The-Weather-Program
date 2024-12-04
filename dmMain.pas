unit dmMain;

interface

uses
  System.SysUtils, System.Classes, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, REST.Response.Adapter, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmAPI = class(TDataModule)
    rstClient: TRESTClient;
    rstRequest: TRESTRequest;
    rstResponse: TRESTResponse;
    tblData: TFDMemTable;
    rstResponseDataAdapter: TRESTResponseDataSetAdapter;
    rstForecastClient: TRESTClient;
    rstForecastRequest: TRESTRequest;
    rstForecastResponse: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    tblForecastData: TFDMemTable;
    rstAQIClient: TRESTClient;
    rstAQIRequest: TRESTRequest;
    rstAQIResponse: TRESTResponse;
    rstAQIForecastClient: TRESTClient;
    rstAQIForecastRequest: TRESTRequest;
    rstAQIForecastResponse: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAPI: TdmAPI;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
