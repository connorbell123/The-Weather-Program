program TheWeatherProgram;

uses
  Vcl.Forms,
  Main in 'Main.pas' {frmMain},
  dmMain in 'dmMain.pas' {dmAPI: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  Settings in 'Settings.pas' {frmSettings},
  Weather in 'Weather.pas' {fraWeatherDetails: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows11 Polar Dark');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmAPI, dmAPI);
  Application.CreateForm(TfrmSettings, frmSettings);
  Application.Run;
end.
