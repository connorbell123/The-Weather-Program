unit Weather;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Winapi.ShellAPI;

type
  TfraWeatherDetails = class(TFrame)
    pnlCurrentTemperature: TPanel;
    lblCurrentTemperatureCaption: TLabel;
    lblCurrentTemperature: TLabel;
    pnlFeelsLike: TPanel;
    lblFeelsLikeCaption: TLabel;
    lblFeelsLike: TLabel;
    pnlPressure: TPanel;
    lblPressureCaption: TLabel;
    lblPressure: TLabel;
    pnlHumidity: TPanel;
    lblHumidityCaption: TLabel;
    lblHumidity: TLabel;
    pnlVisibility: TPanel;
    Label5: TLabel;
    lblVisibility: TLabel;
    pnlWindSpeed: TPanel;
    Label6: TLabel;
    lblWindSpeed: TLabel;
    pnlWindDirection: TPanel;
    Label7: TLabel;
    lblWindDirection: TLabel;
    pnlWindGustSpeed: TPanel;
    Label8: TLabel;
    lblWindGustSpeed: TLabel;
    pnlCloudCover: TPanel;
    lblCloudCoverCaption: TLabel;
    lblCloudCover: TLabel;
    pnlWeatherForecast: TPanel;
    pnlSunriseSunset: TPanel;
    lblWeatherForecastCaption: TLabel;
    pnlAQI: TPanel;
    pnlAQIComponents: TPanel;
    pnlHourlyAQIForecast: TPanel;
    lblAQICaption: TLabel;
    lblAQIComponentsCaption: TLabel;
    lblAQIForecastCaption: TLabel;
    lblAQI: TLabel;
    lblSunriseCaption: TLabel;
    lblSunrise: TLabel;
    lblSunsetCaption: TLabel;
    lblSunset: TLabel;
    pnlFirstHour: TPanel;
    lblTime1: TLabel;
    lblTemp1: TLabel;
    lblFeelsLikeCaption1: TLabel;
    lblFeelsLike1: TLabel;
    lblPressureCaption1: TLabel;
    lblPressure1: TLabel;
    lblHumidityCaption1: TLabel;
    lblHumidity1: TLabel;
    lblDescription1: TLabel;
    lblCLoudCoverCaption1: TLabel;
    lblCloudCover1: TLabel;
    lblWindSpeedCaption1: TLabel;
    lblWindSpeed1: TLabel;
    lblWindDirectionCaption1: TLabel;
    lblWindDirection1: TLabel;
    lblWindGustsCaption1: TLabel;
    lblWindGusts1: TLabel;
    pnlSecondHour: TPanel;
    lblTime2: TLabel;
    lblTemp2: TLabel;
    lblFeelsLikeCaption2: TLabel;
    lblFeelsLike2: TLabel;
    lblPressureCaption2: TLabel;
    lblPressure2: TLabel;
    lblHumidityCaption2: TLabel;
    lblHumidity2: TLabel;
    lblDescription2: TLabel;
    lblCloudCoverCaption2: TLabel;
    lblCloudCover2: TLabel;
    lblWindSpeedCaption2: TLabel;
    lblWindSpeed2: TLabel;
    lblWindDirectionCaption2: TLabel;
    lblWindDirection2: TLabel;
    lblWindGustsCaption2: TLabel;
    lblWindGusts2: TLabel;
    pnlThirdHour: TPanel;
    lblTime3: TLabel;
    lblTemp3: TLabel;
    lblFeelsLikeCaption3: TLabel;
    lblFeelsLike3: TLabel;
    lblPressureCaption3: TLabel;
    lblPressure3: TLabel;
    lblHumidityCaption3: TLabel;
    lblHumidity3: TLabel;
    lblDescription3: TLabel;
    lblCloudCoverCaption3: TLabel;
    lblCloudCover3: TLabel;
    lblWindSpeedCaption3: TLabel;
    lblWindSpeed3: TLabel;
    lblWindDirectionCaption3: TLabel;
    lblWindDirection3: TLabel;
    lblWindGustsCaption3: TLabel;
    lblWindGusts3: TLabel;
    lblCOCaption: TLabel;
    lblNOCaption: TLabel;
    lblNO2Caption: TLabel;
    lblCO: TLabel;
    lblNO: TLabel;
    lblNO2: TLabel;
    lblO3Caption: TLabel;
    lblPM2_5Caption: TLabel;
    lblPM10Caption: TLabel;
    lblPM10: TLabel;
    lblPM2_5: TLabel;
    lblO3: TLabel;
    lblNH3Caption: TLabel;
    lblNH3: TLabel;
    btnAQIHelp: TBitBtn;
    lblSO2Caption: TLabel;
    lblSO2: TLabel;
    lblAQIComponentsUnitsCaption: TLabel;
    lblAQIHelpCaption: TLabel;
    pnlAQIForecast1: TPanel;
    lblAQITime1: TLabel;
    lblAQI1: TLabel;
    lblCOCaption1: TLabel;
    lblCO1: TLabel;
    lblNOCaption1: TLabel;
    lblNO1: TLabel;
    lblNO2Caption1: TLabel;
    lblNO2_1: TLabel;
    lblAQIStatus1: TLabel;
    lblO3Caption1: TLabel;
    lblO3_1: TLabel;
    lblPM2_5Caption1: TLabel;
    lblPM2_5_1: TLabel;
    lblPM10Caption1: TLabel;
    lblPM10_1: TLabel;
    lblNH3Caption1: TLabel;
    lblNH3_1: TLabel;
    lblAQIStatus: TLabel;
    lblSO2Caption1: TLabel;
    lblSO2_1: TLabel;
    lblAQIForecast2: TPanel;
    lblAQITime2: TLabel;
    lblAQI2: TLabel;
    lblCOCaption2: TLabel;
    lblCO_2: TLabel;
    lblNOCaption2: TLabel;
    lblNO_2: TLabel;
    lblNO2Caption2: TLabel;
    lblNO2_2: TLabel;
    lblAQIStatus2: TLabel;
    lblO3Caption2: TLabel;
    lblO3_2: TLabel;
    lblPM2_5Caption2: TLabel;
    lblPM2_5_2: TLabel;
    lblPM10Caption2: TLabel;
    lblPM10_2: TLabel;
    lblNH3Caption2: TLabel;
    lblNH3_2: TLabel;
    lblSO2Caption2: TLabel;
    lblSO2_2: TLabel;
    lblAQIForecast3: TPanel;
    lblAQITime3: TLabel;
    lblAQI3: TLabel;
    lblCOCaption3: TLabel;
    lblCO_3: TLabel;
    lblNOCaption3: TLabel;
    lblNO_3: TLabel;
    lblNO2Caption3: TLabel;
    lblNO2_3: TLabel;
    lblAQIStatus3: TLabel;
    lblO3Caption3: TLabel;
    lblO3_3: TLabel;
    lblPM2_5Caption3: TLabel;
    lblPM2_5_3: TLabel;
    lblPM10Caption3: TLabel;
    lblPM10_3: TLabel;
    lblNH3Caption3: TLabel;
    lblNH3_3: TLabel;
    lblSO2Caption3: TLabel;
    lblSO2_3: TLabel;
    lblAQICaption1: TLabel;
    lblAQICaption2: TLabel;
    lblAQICaption3: TLabel;
    lblUnits1: TLabel;
    lblUnits2: TLabel;
    lblUnits3: TLabel;
    btnReport: TBitBtn;
    lblReportCaption: TLabel;
    procedure btnReportClick(Sender: TObject);
    procedure btnAQIHelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses dmMain, Main;

procedure TfraWeatherDetails.btnAQIHelpClick(Sender: TObject);
var
  sFileName : string;
begin
  // Display more information about air quality data
  sFileName := 'AQI_Help.html';

  if FileExists(sFileName) then
    begin
      ShellExecute(0, 'open', PChar(sFileName), nil, nil, SW_SHOWNORMAL)
    end
  else
    begin
      MessageDlg('Could not locate the "AQI_Help.html" application file' + #13
      + 'Please visit: "https://openweathermap.org/api/air-pollution"' +
      ' for more information.', TMsgDlgType.mtError, [mbOK], 0);
    end;

end;

procedure TfraWeatherDetails.btnReportClick(Sender: TObject);
begin
  // Report
  MessageDlg('If you have a concern with how the data in this application '
  + 'is displayed, or with the applicaiton itself, please send an email to: ' +
  #13 + 'connorbell.081@gmail.com.' + #13 + 'All concerns related to the ' +
  'OpenWeatherAPI service must be directed to "https://home.openweathermap.org/questions"',
  TMsgDlgType.mtInformation, [mbClose], 0);
end;

end.
