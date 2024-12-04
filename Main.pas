unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.Mask, System.Sensors, System.Sensors.Components,
  System.IOUtils, System.JSON, System.Generics.Collections, StrUtils, Weather,
  DateUtils, System.Actions, Vcl.ActnList, WinINet, Vcl.Themes, Vcl.Menus;

type
  TfrmMain = class(TForm)
    lbledtCityName: TLabeledEdit;
    btnSearchWeather: TButton;
    pnlTop: TPanel;
    btnUpdateWeather: TButton;
    btnSettings: TButton;
    lblUpdateCaption: TLabel;
    lstbxPlaces: TListBox;
    stbarMain: TStatusBar;
    lblSettingsCaption: TLabel;
    lblMyPlacesHeading: TLabel;
    btnAddPlace: TButton;
    btnDeletePlace: TButton;
    lblLocationName: TLabel;
    tmrTimer: TTimer;
    btnExit: TButton;
    lblExitCaption: TLabel;
    btnAbout: TButton;
    lblAboutCaption: TLabel;
    lblConditions: TLabel;
    pnlConnectionStatus: TShape;
    lblConnectionStatus: TLabel;
    lblConnectionIcon: TLabel;
    scrlbxMain: TScrollBox;
    btnSetDefaultPlace: TButton;
    tmrCheckConnection: TTimer;
    tmrSetUpdateStatus: TTimer;
    fraWeatherDetails1: TfraWeatherDetails;
    procedure btnSearchWeatherClick(Sender: TObject);
    procedure tmrTimerTimer(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnSettingsClick(Sender: TObject);
    procedure lstbxPlacesClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAddPlaceClick(Sender: TObject);
    procedure btnSetDefaultPlaceClick(Sender: TObject);
    procedure tmrCheckConnectionTimer(Sender: TObject);
    procedure btnUpdateWeatherClick(Sender: TObject);
    procedure tmrSetUpdateStatusTimer(Sender: TObject);
    procedure btnAboutClick(Sender: TObject);
    procedure btnDeletePlaceClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetWeather(pCityName : string);
    procedure GetWeatherForecast(pLat, pLon : string);
    procedure GetAQIData(pLat, pLon : string);
    procedure PopulateForecastData();
    procedure PopulateData();
    procedure PopulateAQIData();
    procedure LoadMyPlacesFromFile();
    procedure LoadDefaultPlaceFromFile();
    procedure AddPlaceToFile(pPlaceName : string);
    function CheckInternetConnection() : Boolean;
    procedure GetAQIForecastData(pLat, pLon : string);
    procedure PopulateAQIForecastData();
    procedure RemovePlace(pPlaceName : string);
    function ProperCase(pString : string) : string;

  public
    { Public declarations }
    sCurrentLocationName : string;
    sDefaultPlace : string;
    sTheme : string;
    sLat, sLon : string;
    tTimeOfLastUpdate : TTime;
    procedure SetDefaultPlace(pPlaceName : string);
    procedure ReadThemeFromFile();
    procedure WriteNewThemeToFile(pThemeName : string);
    procedure ApplyThemeToApplication();
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses dmMain, Settings, About;

{ TfrmMain }

procedure TfrmMain.btnSearchWeatherClick(Sender: TObject);
var
  sCityName : string;
begin
  sCityName := lbledtCityName.Text;
  try
    // Load and get the weather for the searched location:
    GetWeather(sCityName);
    PopulateData();

    // Load and get the weather forecast for the searched location:
    // Note, sLat and sLon are global variables that are populated by the
    // geocoding API in PopulateData().
    GetWeatherForecast(sLat, sLon);
    PopulateForecastData();

    // Get AQI data for the searched location:
    GetAQIData(sLat, sLon);
    PopulateAQIData();

    // Get AQI forecast for the searched location:
    GetAQIForecastData(sLat, sLon);
    PopulateAQIForecastData();

    // Clean up the UI:
    lbledtCityName.Clear;
    lbledtCityName.SetFocus;

    // Update the last updated status:
    tTimeOfLastUpdate := Now;
    tmrSetUpdateStatus.Enabled := True;
  except
    MessageDlg('Could not load the weather for the location "' +
    lbledtCityName.Text + '". Please enter a different location and try again.',
    TMsgDlgType.mtError, [mbOK], 0);
    lbledtCityName.SetFocus;
  end;
end;

procedure TfrmMain.btnSetDefaultPlaceClick(Sender: TObject);
begin
  // Set the selected place from My Places as the default place
  SetDefaultPlace(lstbxPlaces.Items[lstbxPlaces.ItemIndex]);
end;

procedure TfrmMain.btnSettingsClick(Sender: TObject);
begin
  // Open settings Form
  frmSettings.Show;
  frmSettings.cmbPlaces.Text := sDefaultPlace;
end;

procedure TfrmMain.btnUpdateWeatherClick(Sender: TObject);
begin
  // Update the weather for the current location
  if (sCurrentLocationName <> '') or (sCurrentLocationName <> '--')
  or (lblLocationName.Caption <> '--') or (CheckInternetConnection = True) then
    begin
      // Load and get the weather for the current location:
      GetWeather(sCurrentLocationName);
      PopulateData();

      // Load and get the weather forecast for the current location:
      GetWeatherForecast(sLat, sLon);
      PopulateForecastData();

      // Get AQI data for the current location:
      GetAQIData(sLat, sLon);
      PopulateAQIData();

      // Get AQI forecast for the current location:
      GetAQIForecastData(sLat, sLon);
      PopulateAQIForecastData();

      // Update the last updated status:
      tTimeOfLastUpdate := Now;
      tmrSetUpdateStatus.Enabled := True;
    end
  else
    begin
      // Make sure a location has been selected:
      MessageDlg('Please select a location first and then try again.',
      TMsgDlgType.mtError, [mbOK], 0);
    end;
end;

function TfrmMain.CheckInternetConnection: Boolean;
var
  iOrigin : Cardinal;
begin
  // Check the status of the internet connection:
  Result := InternetGetConnectedState(@iOrigin, 0);
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  // On Form Activate:

  // Apply the application theme:
  ReadThemeFromFile;
  ApplyThemeToApplication();

  // Load the default place:
  LoadDefaultPlaceFromFile();

  // Check if the internet is connected:
  if (CheckInternetConnection = True) then
    begin
      // If the internet is connected, enable all the services that use it:
      pnlConnectionStatus.Visible := False;
      lblConnectionStatus.Visible := False;
      lblConnectionIcon.Visible := False;
      btnUpdateWeather.Enabled := True;
      lbledtCityName.Enabled := True;
      btnSearchWeather.Enabled := True;

      // Load and get the weather for the default place
      // using the global variable sDefaultPlace (that comes from
      // LoadDefaultPlaceFromFile()):
      GetWeather(sDefaultPlace);
      PopulateData();

      // Load and get the weather forecast for the default place:
      GetWeatherForecast(sLat, sLon);
      PopulateForecastData();

      // Get the AQI data for the default place:
      GetAQIData(sLat, sLon);
      PopulateAQIData();

      // Get AQI forecast for the default place:
      GetAQIForecastData(sLat, sLon);
      PopulateAQIForecastData();

      // Update the last updated status:
      tTimeOfLastUpdate := Now;
      tmrSetUpdateStatus.Enabled := True;
    end
  else
    begin
      // If the internet is not connected, disable all the services that use it:
      pnlConnectionStatus.Visible := True;
      lblConnectionStatus.Visible := True;
      lblConnectionIcon.Visible := True;
      btnUpdateWeather.Enabled := False;
      lbledtCityName.Enabled := False;
      btnSearchWeather.Enabled := False;
    end;

  // Load My Places from File
  LoadMyPlacesFromFile();
end;

procedure TfrmMain.AddPlaceToFile(pPlaceName : string);
var
  txtFile, txtFileWrite : TextFile;
  bExists : Boolean;
  sLine : string;
begin
  // Write a new place to the "My_Places.txt" text file:

  // Ensure that the place does not already exist:
  bExists := False;
  AssignFile(txtFile, 'My_Places.txt');
  Reset(txtFile);
  while (bExists = False) and (not Eof(txtFile)) do
    begin
      Readln(txtFile, sLine);
      if (sLine = pPlaceName) then
        begin
          bExists := True;
        end;
    end;

  CloseFile(txtFile);

  if (bExists = False) then
    begin
      // If the place does not already exist in "My_Places", then add it:
      AssignFile(txtFile, 'My_Places.txt');
      Append(txtFile);
      Writeln(txtFile, pPlaceName);
      CloseFile(txtFile);
    end
  else
    begin
      MessageDlg('The place you are trying to add has already been added to "My Places".',
      TMsgDlgType.mtError, [mbOK], 0);
    end;

end;

procedure TfrmMain.ApplyThemeToApplication;
var
  sThemeName : string;
begin
  // Apply the theme to the application (using the global sTheme variable):
  if (sTheme = 'Polar Dark') then
    begin
      sThemeName := 'Windows11 Polar Dark';
    end
  else
  if (sTheme = 'Polar Light') then
    begin
      sThemeName := 'Windows11 Polar Light';
    end
  else
  if (sTheme = 'Slate Gray') then
    begin
      sThemeName := 'Windows10 SlateGray';
    end
  else
  if (sTheme = 'Mine Shaft') then
    begin
      sThemeName := 'Windows11 MineShaft';
    end
  else
  if (sTheme = 'Modern Dark') then
    begin
      sThemeName := 'Windows11 Modern Dark';
    end
  else
  if (sTheme = 'White Smoke') then
    begin
      sThemeName := 'Windows11 White Smoke';
    end
  else
  if (sTheme = 'Clear Day') then
    begin
      sThemeName := 'Windows10 Clear Day';
    end;

  try
    // Set the theme:
    TStyleManager.TrySetStyle(sThemeName);
  except
    // If the theme cannot be set, use the default theme:
    TStyleManager.TrySetStyle('Windows11 Polar Dark');
  end;

end;

procedure TfrmMain.btnAboutClick(Sender: TObject);
begin
  // Show the about information for the application:
  MessageDlg('Weather Application - Version 1' + #13
  + '©2024 Connor Bell. ALL RIGHTS RESERVED'
  + #13 + 'Weather data supplied by: OpenWeather', TMsgDlgType.mtInformation,
  [mbClose], 0);
end;

procedure TfrmMain.btnAddPlaceClick(Sender: TObject);
begin
  // Add the current place to the text file
  if ((sCurrentLocationName <> '') or (lblLocationName.Caption <> '--')) then
    begin
      AddPlaceToFile(lblLocationName.Caption);
      LoadMyPlacesFromFile();
    end
  else
    begin
      MessageDlg('No place is currently displaying weather. Search for a place,'
      + ' and then try again.', TMsgDlgType.mtError, [mbOK], 0);
    end;
end;

procedure TfrmMain.btnDeletePlaceClick(Sender: TObject);
var
  iMessage : Integer;
  sDelete : string;
begin
  // Delete a place from My Places

  sDelete := lstbxPlaces.Items[lstbxPlaces.ItemIndex];

  // Confirm with the user if they wish to delete the selected place:
  iMessage := MessageDlg('Are you sure you want to delete "' +
  sDelete + '" from your saved places?', TMsgDlgType.mtConfirmation,
  [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo, TMsgDlgBtn.mbCancel], 0);

  if (iMessage = mrYes) then
    begin
      // Yes - delete selected place from My Places:
      RemovePlace(sDelete);
      lstbxPlaces.ItemIndex := -1;
      LoadMyPlacesFromFile();
    end;

end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  // Close the application:
  Application.Terminate;
end;

procedure TfrmMain.GetAQIData(pLat, pLon: string);
begin
  // Request the AQI data from the OpenWeather API:
  with dmAPI do
    begin
      try
        rstAQIForecastRequest.Params.Items[0].Value := pLat;
        rstAQIRequest.Params.Items[1].Value := pLon;
        rstAQIRequest.Params.Items[2].Value := '38b22b3e0bb8550a67648889dc2e66e9';
        rstAQIClient.BaseURL :=
        'http://api.openweathermap.org/data/2.5/air_pollution?lat=' +
        pLat + '&lon=' + pLon + '&appid=38b22b3e0bb8550a67648889dc2e66e9';

        // Execute the request:
        rstAQIRequest.Execute;
      except
        MessageDlg('Could not get the AQI data for the location: "' +
        pLat + ', ' + pLon + '"' + #13 + 'Please try again.' + #13 +
        rstAQIResponse.StatusCode.ToString + ' - ' +
        rstAQIResponse.StatusText, TMsgDlgType.mtError, [mbOK], 0);
      end;
    end;
end;

procedure TfrmMain.GetAQIForecastData(pLat, pLon: string);
begin
  // Request the AQI Forecast data from the OpenWeather API:
  with dmAPI do
    begin
      try
        rstAQIForecastRequest.Params.Items[0].Value := pLat;
        rstAQIForecastRequest.Params.Items[1].Value := pLon;
        rstAQIForecastRequest.Params.Items[2].Value := '38b22b3e0bb8550a67648889dc2e66e9';
        rstAQIForecastClient.BaseURL :=
        'http://api.openweathermap.org/data/2.5/air_pollution/forecast?lat='
        + pLat + '&lon=' + pLon + '&appid=38b22b3e0bb8550a67648889dc2e66e9';
        // Execute the request
        rstAQIForecastRequest.Execute;
      except
        MessageDlg('Could not get the AQI forecast for the location: "' +
        pLat + ', ' + pLon + '"' + #13 + 'Please try again.' + #13 +
        rstAQIForecastResponse.StatusCode.ToString + ' - ' +
        rstAQIForecastResponse.StatusText, TMsgDlgType.mtError, [mbOK], 0);
      end;
    end;
end;

procedure TfrmMain.GetWeather(pCityName: string);
begin
  // Request the weather for the desired city name "pCityName":
  with dmAPI do
    begin
      try
        rstRequest.Params.Items[0].Value := pCityName;
        rstClient.BaseURL := 'https://api.openweathermap.org/data/2.5/weather?q='
        + pCityName + '&units=metric&appid=38b22b3e0bb8550a67648889dc2e66e9';

        // Execute the request:
        rstRequest.Execute;
      except
        MessageDlg('Could not get the weather data for the city: "'
        + pCityName + '"' + #13 + 'Please try again.' + #13 +
        rstResponse.StatusCode.ToString + ' - ' +
        rstResponse.StatusText, TMsgDlgType.mtError, [mbOK], 0);
      end;
    end;
end;

procedure TfrmMain.GetWeatherForecast(pLat, pLon: string);
begin
  // Request the 3-hour Weather forecast from the OpenWeather API:
  with dmAPI do
    begin
      try
        rstForecastRequest.Params.Items[0].Value := pLat; // Lat
        rstForecastRequest.Params.Items[1].Value := pLon; // Lon
        rstForecastRequest.Params.Items[2].Value
                        := '38b22b3e0bb8550a67648889dc2e66e9';
        rstForecastRequest.Params.Items[3].Value := 'metric'; // Units
        rstForecastRequest.Params.Items[4].Value := '3'; // Cnt

        rstForecastClient.BaseURL :=
        'http://api.openweathermap.org/data/2.5/forecast?lat='
        + sLat + '&lon=' + sLon + '&appid=38b22b3e0bb8550a67648889dc2e66e9';

        // Execute the request:
        rstForecastRequest.Execute;
      except
        MessageDlg('Could not get the weather forecast for the location: "' +
        pLat + ', ' + pLon + '"' + #13 + 'Please try again.' + #13 +
        rstForecastResponse.StatusCode.ToString + ' - ' +
        rstForecastResponse.StatusText, TMsgDlgType.mtError, [mbOK], 0);
      end;
    end;
end;

procedure TfrmMain.LoadDefaultPlaceFromFile;
var
  txtFile : TextFile;
begin
  // Load the default place from the "Default_Place.txt" file
  // Check if the default place exists;
  if FileExists('Default_Place.txt') then
    begin
      // Load the default place from the "Default_Places.txt" text file:
      AssignFile(txtFile, 'Default_Place.txt');
      Reset(txtFile);
      Readln(txtFile, sDefaultPlace);
      CloseFile(txtFile);

      // Update the application status bar:
      stbarMain.Panels[1].Text := 'Default Place: ' + sDefaultPlace;
    end
  else
    begin
      // Display a warning to the user if Default Place text file could not be found:
      MessageDlg('Could not locate the "Default_Place.txt" application file.' +
      #13 + 'A blank "Default_Place.txt" file has been created for you.' + #13 +
      'Please select a default place now.',
      TMsgDlgType.mtError, [mbOK], 0);

      // Create a blank Default Places text file:
      AssignFile(txtFile, 'Default_Places.txt');
      Rewrite(txtFile);
      CloseFile(txtFile);

      // Assign a default place for the global variable:
      sDefaultPlace := 'Johannesburg';

      // Update the application status bar:
      stbarMain.Panels[1].Text := 'Default Place: Not set';
    end;

end;

procedure TfrmMain.LoadMyPlacesFromFile;
var
  txtFile : TextFile;
  sLine : string;
begin
  // Load My Places from "My_Places.txt" and populate the My Places
  // listbox:

  // Check if the "My_Places.txt" text file exists:
  if FileExists('My_Places.txt') then
    begin
      // Read the places from the text file and populate the list box:
      AssignFile(txtFile, 'My_Places.txt');
      Reset(txtFile);
      lstbxPlaces.Clear;
      while not EOF(txtFile) do
        begin
          Readln(txtFile, sLine);
          lstbxPlaces.Items.Add(sLine);
        end;
      CloseFile(txtFile);
    end
  else
    begin
      // Display a warning to the user if My Places text file could not be found:
      MessageDlg('Could not locate the "My_Places.txt" application file.' +
      #13 + 'A blank "My Places" file was created.',
      TMsgDlgType.mtError, [mbOK], 0);

      // Create a blank My Places text file:
      AssignFile(txtFile, 'My_Places.txt');
      Rewrite(txtFile);
      CloseFile(txtFile);
    end;
end;

procedure TfrmMain.lstbxPlacesClick(Sender: TObject);
var
  sCityName : string;
begin
  // Method for the Places list box when it is clicked:
  if (lstbxPlaces.ItemIndex <> -1) then
    begin
      // Enable My Places action buttons
      btnDeletePlace.Enabled := True;
      if (lstbxPlaces.Items[lstbxPlaces.ItemIndex] <> sDefaultPlace) then
        begin
          // Enable the "Set Default" button if
          // only if the selected location is not already the default:
          btnSetDefaultPlace.Enabled := True;
        end
      else
        begin
          btnSetDefaultPlace.Enabled := False;
        end;

      // Check if the internet is connected before trying to
      // contact the API:
      if (CheckInternetConnection = True) then
        begin
          // Get the weather for a selected place in My Places:
          sCityName := lstbxPlaces.Items[lstbxPlaces.ItemIndex];
          GetWeather(sCityName);
          PopulateData();

          // Load and get the weather forecast for the selected place
          // in My Places:
          GetWeatherForecast(sLat, sLon);
          PopulateForecastData();

          // Get AQI data for the selected place in My Places:
          GetAQIData(sLat, sLon);
          PopulateAQIData();

          // Get AQI forecast for the selected place in My Places:
          GetAQIForecastData(sLat, sLon);
          PopulateAQIForecastData();

          // Update the last updated status:
          tTimeOfLastUpdate := Now;
          tmrSetUpdateStatus.Enabled := True;
        end;
    end;
end;

procedure TfrmMain.PopulateAQIData;
var
  jsnValue : TJSONValue;
begin
  // Populate AQI Data
  with dmAPI do
    begin
      jsnValue := TJSONObject.ParseJSONValue(rstAQIResponse.Content);
      with fraWeatherDetails1 do
        begin
          try
            lblAQI.Caption :=
            jsnValue.GetValue<string>('list[0].main.aqi');
          except
            lblAQI.Caption := '--';
          end;

          try
            lblCO.Caption :=
            jsnValue.GetValue<string>('list[0].components.co');
          except
            lblCO.Caption := '--';
          end;

          try
            lblNO.Caption :=
            jsnValue.GetValue<string>('list[0].components.no');
          except
            lblNO.Caption := '--';
          end;

          try
            lblNO2.Caption :=
            jsnValue.GetValue<string>('list[0].components.no2');
          except
            lblNO2.Caption := '--';
          end;

          try
            lblO3.Caption :=
            jsnValue.GetValue<string>('list[0].components.o3');
          except
            lblO3.Caption := '--';
          end;

          try
            lblSO2.Caption :=
            jsnValue.GetValue<string>('list[0].components.so2');
          except
            lblSO2.Caption := '--';
          end;

          try
            lblNH3.Caption :=
            jsnValue.GetValue<string>('list[0].components.nh3');
          except
            lblNH3.Caption := '--';
          end;

          try
            lblPM2_5.Caption :=
            jsnValue.GetValue<string>('list[0].components.pm2_5');
          except
            lblPM2_5.Caption := '--';
          end;

          try
            lblPM10.Caption :=
            jsnValue.GetValue<string>('list[0].components.pm10');
          except
            lblPM10.Caption := '--';
          end;
        end;
    end;
end;

// FIX THIS!:
procedure TfrmMain.PopulateAQIForecastData;
var
  JSONValue: TJSONValue;
  JSONObject : TJSONObject;
  JSONArray: TJSONArray;

  DTObject : array[1..3] of string;
  MainObject : array[1..3] of TJSONObject;
  ComponentsObject : array[1..3] of TJSONObject;

  AQI : array[1..3] of string;
  CO : array[1..3] of string;
  NO : array[1..3] of string;
  NO2 : array[1..3] of string;
  O3 : array[1..3] of string;
  NH3 : array[1..3] of string;
  SO2 : array[1..3] of string;
  PM2_5 : array[1..3] of string;
  PM10 : array[1..3] of string;
begin
  with dmAPI do
    begin

      JSONValue := TJSONObject.ParseJSONValue(rstAQIForecastResponse.Content);
      JSONObject := JSONValue as TJSONObject;
      JSONArray := JSONObject.GetValue('list') as TJSONArray;

      with fraWeatherDetails1 do
        begin
          // First-hour AQI Forecast
          // Time:
          DTObject[1] := JSONArray.Items[1].GetValue<string>('dt');
          lblAQITime1.Caption :=
          FormatDateTime('h AMPM',
          DateUtils.UnixToDateTime(StrToInt64(DTObject[1]) +
          Trunc(TTimeZone.Local.UtcOffset.Ticks
          / TTimeZone.Local.UtcOffset.TicksPerSecond)));

          MainObject[1] := JSONArray.Items[1].GetValue<TJSONObject>('main');
          ComponentsObject[1] := JSONArray.Items[1].GetValue<TJSONObject>('components');

          // AQI
          try
            AQI[1] := MainObject[1].GetValue<string>('aqi');
            lblAQI1.Caption := AQI[1];
          except
            lblAQI1.Caption := '--';
          end;

          // Carbon Monoxide
          try
            CO[1] := ComponentsObject[1].GetValue<string>('co');
            lblCO1.Caption := CO[1];
          except
            lblCO1.Caption := '--';
          end;

          // Nitric Oxide
          try
            NO[1] := ComponentsObject[1].GetValue<string>('no');
            lblNO1.Caption := NO[1];
          except
            lblNO1.Caption := '--';
          end;

          // Nitrogen Dioxide
          try
            NO2[1] := ComponentsObject[1].GetValue<string>('no2');
            lblNO2_1.Caption := NO2[1];
          except
            lblNO2_1.Caption := '--';
          end;

          // Ozone
          try
            O3[1] := ComponentsObject[1].GetValue<string>('o3');
            lblO3_1.Caption := O3[1];
          except
            lblO3_1.Caption := '--';
          end;

          // PM 2.5
          try
            PM2_5[1] := ComponentsObject[1].GetValue<string>('pm2_5');
            lblPM2_5_1.Caption := PM2_5[1];
          except
            lblPM2_5_1.Caption := '--';
          end;

          // PM 10
          try
            PM10[1] := ComponentsObject[1].GetValue<string>('pm2_5');
            lblPM10_1.Caption := PM10[1];
          except
            lblPM10_1.Caption := '--';
          end;

          // Ammonia
          try
            NH3[1] := ComponentsObject[1].GetValue<string>('nh3');
            lblNH3_1.Caption := NH3[1];
          except
            lblNH3_1.Caption := '--';
          end;

          // Sulphur Dioxide
          try
            SO2[1] := ComponentsObject[1].GetValue<string>('so2');
            lblSO2_1.Caption := SO2[1];
          except
            lblSO2_1.Caption := '--';
          end;

          // Second-hour AQI Forecast
          // Time:
          DTObject[2] := JSONArray.Items[2].GetValue<string>('dt');
          lblAQITime2.Caption :=
          FormatDateTime('h AMPM',
          DateUtils.UnixToDateTime(StrToInt64(DTObject[2]) +
          Trunc(TTimeZone.Local.UtcOffset.Ticks
          / TTimeZone.Local.UtcOffset.TicksPerSecond)));

          MainObject[2] := JSONArray.Items[2].GetValue<TJSONObject>('main');
          ComponentsObject[2] := JSONArray.Items[2].GetValue<TJSONObject>('components');

          // AQI
          try
            AQI[2] := MainObject[2].GetValue<string>('aqi');
            lblAQI2.Caption := AQI[2];
          except
            lblAQI2.Caption := '--';
          end;

          // Carbon Monoxide
          try
            CO[2] := ComponentsObject[2].GetValue<string>('co');
            lblCO_2.Caption := CO[2];
          except
            lblCO_2.Caption := '--';
          end;

          // Nitric Oxide
          try
            NO[2] := ComponentsObject[2].GetValue<string>('no');
            lblNO_2.Caption := NO[2];
          except
            lblNO_2.Caption := '--';
          end;

          // Nitrogen Dioxide
          try
            NO2[2] := ComponentsObject[2].GetValue<string>('no2');
            lblNO2_2.Caption := NO2[2];
          except
            lblNO2_2.Caption := '--';
          end;

          // Ozone
          try
            O3[2] := ComponentsObject[2].GetValue<string>('o3');
            lblO3_2.Caption := O3[2];
          except
            lblO3_2.Caption := '--';
          end;

          // PM 2.5
          try
            PM2_5[2] := ComponentsObject[2].GetValue<string>('pm2_5');
            lblPM2_5_2.Caption := PM2_5[2];
          except
            lblPM2_5_2.Caption := '--';
          end;

          // PM 10
          try
            PM10[2] := ComponentsObject[2].GetValue<string>('pm2_5');
            lblPM10_2.Caption := PM10[2];
          except
            lblPM10_2.Caption := '--';
          end;

          // Ammonia
          try
            NH3[2] := ComponentsObject[2].GetValue<string>('nh3');
            lblNH3_2.Caption := NH3[2];
          except
            lblNH3_2.Caption := '--';
          end;

          // Sulphur Dioxide
          try
            SO2[2] := ComponentsObject[2].GetValue<string>('so2');
            lblSO2_2.Caption := SO2[2];
          except
            lblSO2_2.Caption := '--';
          end;

          // Third-hour AQI Forecast
          // Time:
          DTObject[3] := JSONArray.Items[3].GetValue<string>('dt');
          lblAQITime3.Caption :=
          FormatDateTime('h AMPM',
          DateUtils.UnixToDateTime(StrToInt64(DTObject[3]) +
          Trunc(TTimeZone.Local.UtcOffset.Ticks
          / TTimeZone.Local.UtcOffset.TicksPerSecond)));

          MainObject[3] := JSONArray.Items[3].GetValue<TJSONObject>('main');
          ComponentsObject[3] := JSONArray.Items[3].GetValue<TJSONObject>('components');

          // AQI
          try
            AQI[3] := MainObject[3].GetValue<string>('aqi');
            lblAQI3.Caption := AQI[3];
          except
            lblAQI3.Caption := '--';
          end;

          // Carbon Monoxide
          try
            CO[3] := ComponentsObject[3].GetValue<string>('co');
            lblCO_3.Caption := CO[3];
          except
            lblCO_3.Caption := '--';
          end;

          // Nitric Oxide
          try
            NO[3] := ComponentsObject[3].GetValue<string>('no');
            lblNO_3.Caption := NO[3];
          except
            lblNO_3.Caption := '--';
          end;

          // Nitrogen Dioxide
          try
            NO2[3] := ComponentsObject[3].GetValue<string>('no2');
            lblNO2_3.Caption := NO2[3];
          except
            lblNO2_3.Caption := '--';
          end;

          // Ozone
          try
            O3[3] := ComponentsObject[3].GetValue<string>('o3');
            lblO3_3.Caption := O3[3];
          except
            lblO3_3.Caption := '--';
          end;

          // PM 2.5
          try
            PM2_5[3] := ComponentsObject[3].GetValue<string>('pm2_5');
            lblPM2_5_3.Caption := PM2_5[3];
          except
            lblPM2_5_3.Caption := '--';
          end;

          // PM 10
          try
            PM10[3] := ComponentsObject[3].GetValue<string>('pm2_5');
            lblPM10_3.Caption := PM10[3];
          except
            lblPM10_3.Caption := '--';
          end;

          // Ammonia
          try
            NH3[3] := ComponentsObject[3].GetValue<string>('nh3');
            lblNH3_3.Caption := NH3[3];
          except
            lblNH3_3.Caption := '--';
          end;

          // Sulphur Dioxide
          try
            SO2[3] := ComponentsObject[3].GetValue<string>('so2');
            lblSO2_3.Caption := SO2[3];
          except
            lblSO2_3.Caption := '--';
          end;

        end;
    end;
end;

procedure TfrmMain.PopulateData;
var
  jsnValue : TJSONValue;
begin
  // Populate current weather data:
  with dmAPI do
    begin
      // Parse the JSON text from the rstResponse REST Response object:
      jsnValue := TJSONObject.ParseJSONValue(rstResponse.Content);

      with fraWeatherDetails1 do
        begin
          // Location (City) Name
          try
            lblLocationName.Caption := tblData['name'];
            sCurrentLocationName := tblData['name'];
          except
            lblLocationName.Caption := '--';
          end;

          // Weather Description
          try
            lblConditions.Caption :=
            ProperCase(jsnValue.GetValue<string>('weather[0].description'));
          except
            lblConditions.Caption := '--';
          end;

          // Temperature
          try
            lblCurrentTemperature.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('main.temp'))))
            + '°C';
           except
            lblCurrentTemperature.Caption := '--°C';
          end;

          // Feels Like
          try
            lblFeelsLike.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('main.feels_like'))))
            + '°C';
          except
            lblFeelsLike.Caption := '--°C';
          end;

          // Pressure
          try
            lblPressure.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('main.pressure'))))
            + ' mb';
           except
            lblPressure.Caption := '-- mb';
          end;

          // Humidity
          try
            lblHumidity.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('main.humidity'))))
            + '%';
           except
            lblHumidity.Caption := '-- %';
          end;

          // Visibility
          try
            lblVisibility.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('visibility'))))
            + ' m';
          except
            lblVisibility.Caption := '-- m';
          end;

          // Wind Speed
          try
            lblWindSpeed.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('wind.speed')) * 3.6))
            + ' km/h';
          except
            lblWindSpeed.Caption := '-- km/h';
          end;

          // Wind Direction
          try
            lblWindDirection.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('wind.deg'))))
            + '°';
          except
            lblWindDirection.Caption := '--°';
          end;

          // Wind Gust Speed
          try
            lblWindGustSpeed.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('wind.gust')) * 3.6))
            + ' km/h';
          except
            lblWindGustSpeed.Caption := '-- km/h';
          end;

          // Cloud Cover
          try
            lblCloudCover.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('clouds.all'))))
            + '%';
          except
            lblCloudCover.Caption := '--%';
          end;

          // Sunrise
          try
            lblSunrise.Caption :=
            FormatDateTime('hh:mm AMPM',
            DateUtils.UnixToDateTime(StrToInt64(jsnValue.GetValue<string>('sys.sunrise')) +
            + StrToInt64(jsnValue.GetValue<string>('timezone'))));
          except
            lblSunrise.Caption := '--';
          end;

          // Sunset
          try
            lblSunset.Caption :=
            FormatDateTime('hh:mm AMPM',
            DateUtils.UnixToDateTime(StrToInt64(jsnValue.GetValue<string>('sys.sunset')) +
            + StrToInt64(jsnValue.GetValue<string>('timezone'))));
          except
            lblSunset.Caption := '--';
          end;

          // Populate the globa latitude and longitude variables:
          sLat := jsnValue.GetValue<string>('coord.lat');
          sLon := jsnValue.GetValue<string>('coord.lon');
        end;
    end;

end;

procedure TfrmMain.PopulateForecastData;
var
  jsnValue : TJSONValue;
begin
  // Populate weather forecast data
  with dmAPI do
    begin
      // Parse the JSON text from the rstForecastReponse REST Response object:
      jsnValue := TJSONObject.ParseJSONValue(rstForecastResponse.Content);

      with fraWeatherDetails1 do
        begin
          // First hour forecast
          // Display the weather forecast for the first hour:
          try
            // Time
            lblTime1.Caption :=
            FormatDateTime('h AMPM',
            DateUtils.UnixToDateTime(StrToInt64(jsnValue.GetValue<string>('list[0].dt')) +
            + StrToInt64(jsnValue.GetValue<string>('city.timezone'))));
          except
            lblTime1.Caption := '--';
          end;

          try
            // Description
            lblDescription1.Caption :=
            ProperCase(jsnValue.GetValue<string>('list[0].weather[0].description'));
          except
            lblDescription1.Caption := '--';
          end;

          try
            // Temperature
            lblTemp1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].main.temp'))))
            + '°C';
          except
            lblTemp1.Caption := '--°C';
          end;

          try
            // Feels Like
            lblFeelsLike1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].main.feels_like'))))
            + '°C';
          except
            lblFeelsLike1.Caption := '--°C';
          end;

          try
            // Pressure
            lblPressure1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].main.pressure'))))
            + ' mb';
          except
            lblPressure1.Caption := '-- mb';
          end;

          try
            // Humidity
            lblHumidity1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].main.humidity'))))
            + '%';
          except
            lblHumidity1.Caption := '--%';
          end;

          try
            // Cloud Cover
            lblCloudCover1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].clouds.all'))))
            + '%';
          except
            lblCloudCover1.Caption := '--%';
          end;

          try
            // Wind Speed
            lblWindSpeed1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].wind.speed')) * 3.6))
            + ' km/h';
          except
            lblWindSpeed1.Caption := '-- km/h';
          end;

          try
            // Wind Gust Speed
            lblWindGusts1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].wind.gust')) * 3.6))
            + ' km/h';
          except
            lblWindGusts1.Caption := '-- km/h';
          end;

          try
            // Wind Direction
            lblWindDirection1.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[0].wind.deg'))))
            + '°';
          except
            lblWindDirection1.Caption := '--°'
          end;


          // Second hour forecast
          // Display the weather forecast for the second hour:
          try
            // Time
            lblTime2.Caption :=
            FormatDateTime('h AMPM',
            DateUtils.UnixToDateTime(StrToInt64(jsnValue.GetValue<string>('list[1].dt')) +
            + StrToInt64(jsnValue.GetValue<string>('city.timezone'))));
          except
            lblTime1.Caption := '--';
          end;

          try
            // Description
            lblDescription2.Caption :=
            ProperCase(jsnValue.GetValue<string>('list[1].weather[0].description'));
          except
            lblDescription2.Caption := '--';
          end;

          try
            // Temperature
            lblTemp2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].main.temp'))))
            + '°C';
          except
            lblTemp2.Caption := '--°C';
          end;

          try
            // Feels Like
            lblFeelsLike2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].main.feels_like'))))
            + '°C';
          except
            lblFeelsLike2.Caption := '--°C';
          end;

          try
            // Pressure
            lblPressure2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].main.pressure'))))
            + ' mb';
          except
            lblPressure2.Caption := '-- mb';
          end;

          try
            // Humidity
            lblHumidity2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].main.humidity'))))
            + '%';
          except
            lblHumidity2.Caption := '--%';
          end;

          try
            // Cloud Cover
            lblCloudCover2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].clouds.all'))))
            + '%';
          except
            lblCloudCover2.Caption := '--%';
          end;

          try
            // Wind Speed
            lblWindSpeed2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].wind.speed')) * 3.6))
            + ' km/h';
          except
            lblWindSpeed2.Caption := '-- km/h';
          end;

          try
            // Wind Gust Speed
            lblWindGusts2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].wind.gust')) * 3.6))
            + ' km/h';
          except
            lblWindGusts2.Caption := '-- km/h';
          end;

          try
            // Wind Direction
            lblWindDirection2.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[1].wind.deg'))))
            + '°';
          except
            lblWindDirection1.Caption := '--°'
          end;

          // Third hour forecast
          // Display the weather forecast for the third hour:
          try
            // Time
            lblTime3.Caption :=
            FormatDateTime('h AMPM',
            DateUtils.UnixToDateTime(StrToInt64(jsnValue.GetValue<string>('list[2].dt')) +
            + StrToInt64(jsnValue.GetValue<string>('city.timezone'))));
          except
            lblTime3.Caption := '--';
          end;

          try
            // Description
            lblDescription3.Caption :=
            ProperCase(jsnValue.GetValue<string>('list[2].weather[0].description'));
          except
            lblDescription3.Caption := '--';
          end;

          try
            // Temperature
            lblTemp3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].main.temp'))))
            + '°C';
          except
            lblTemp3.Caption := '--°C';
          end;

          try
            // Feels Like
            lblFeelsLike3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].main.feels_like'))))
            + '°C';
          except
            lblFeelsLike3.Caption := '--°C';
          end;

          try
            // Pressure
            lblPressure3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].main.pressure'))))
            + ' mb';
          except
            lblPressure3.Caption := '-- mb';
          end;

          try
            // Humidity
            lblHumidity3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].main.humidity'))))
            + '%';
          except
            lblHumidity3.Caption := '--%';
          end;

          try
            // Cloud Cover
            lblCloudCover3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].clouds.all'))))
            + '%';
          except
            lblCloudCover3.Caption := '--%';
          end;

          try
            // Wind Speed
            lblWindSpeed3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].wind.speed')) * 3.6))
            + ' km/h';
          except
            lblWindSpeed3.Caption := '-- km/h';
          end;

          try
            // Wind Gust Speed
            lblWindGusts3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].wind.gust')) * 3.6))
            + ' km/h';
          except
            lblWindGusts3.Caption := '-- km/h';
          end;

          try
            // Wind Direction
            lblWindDirection3.Caption :=
            IntToStr(Round(StrToFloat(jsnValue.GetValue<string>('list[2].wind.deg'))))
            + '°';
          except
            lblWindDirection3.Caption := '--°'
          end;
        end;
    end;
end;

function TfrmMain.ProperCase(pString: string): string;
var
  I, iCount : Integer;
  slstWords: TStringList;
begin
  // Proper case
  // Convert the given string "pString", so that
  // each word in the string begins with a uppercase character
  // and the rest is lowercase:
  slstWords := TStringList.Create;
  try
    // Split the input string into words using a space delimiter
    slstWords.Delimiter := ' ';
    slstWords.DelimitedText := pString;

    iCount := slstWords.Count;

    for I := 0 to iCount - 1 do
    begin
      // Capitalise the first letter of each word
      if slstWords[I] <> '' then
        begin
          slstWords[I] := AnsiUpperCase(slstWords[I][1])
          + AnsiLowerCase(Copy(slstWords[I], 2, Length(slstWords[I]) - 1));
        end;
    end;

    // Combine the words back into a single string
    Result := StringReplace(slstWords.DelimitedText,
    slstWords.Delimiter, ' ', [rfReplaceAll]);
  finally
    slstWords.Free;
  end;
end;

procedure TfrmMain.ReadThemeFromFile;
var
  txtFile : TextFile;
begin
  // Read the application theme name from the "Theme.txt" text filefile
  if FileExists('Theme.txt') then
    begin
      // Read the theme name from the text file:
      AssignFile(txtFile, 'Theme.txt');
      Reset(txtFile);
      Readln(txtFile, sTheme);
      CloseFile(txtFile);

      // If the read theme is NULL (blank), then just apply the default
      // theme to the application:
      if (sTheme = '') then
        begin
          sTheme := 'Polar Dark';
          WriteNewThemeToFile(sTheme);
        end;

    end
  else
    begin
      // If the theme file doesn't exist, then just apply the default
      // Polar Dark theme:
      sTheme := 'Polar Dark';
    end;
end;

procedure TfrmMain.RemovePlace(pPlaceName: string);
var
  txtFileRead : TextFile;
  txtFileWrite : TextFile;
  sLine : string;
begin
  // Remove a place from the "My_Places.txt" text file
  // Check the "My_Places.txt" file exists:
  if FileExists('My_Places.txt') then
    begin
      // Copy over all the places that are not "pPlaceName" to the
      // "My_Places_Keep.txt" text file
      AssignFile(txtFileRead, 'My_Places.txt');
      Reset(txtFileRead);

      AssignFile(txtFileWrite, 'My_Places_Keep.txt');
      Rewrite(txtFileWrite);

      while not EOF(txtFileRead) do
        begin
          Readln(txtFileRead, sLine);
          if (sLine <> pPlaceName) then
            begin
              Writeln(txtFileWrite, sLine);
            end;
        end;

      CloseFile(txtFileRead);
      CloseFile(txtFileWrite);

      // Copy all the places from the "My_Places_Keep.txt" text file back
      // to the main "My_Places.txt" text file:
      AssignFile(txtFileRead, 'My_Places_Keep.txt');
      Reset(txtFileRead);

      AssignFile(txtFileWrite, 'My_Places.txt');
      Rewrite(txtFileWrite);

      while not EOF(txtFileRead) do
        begin
          Readln(txtFileRead, sLine);
          Writeln(txtFileWrite, sLine);
        end;

      CloseFile(txtFileRead);
      CloseFile(txtFileWrite);
    end
  else
    begin
      // If the "My_Places.txt" text file could not be found,
      // then we cannot delete any place. It should not even appear in the
      // My Places list box!
      MessageDlg('Could not remove the place(s) because ' + #13 +
      'the "My_Places.txt" application file could not be found.',
      TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0);
    end;
end;

procedure TfrmMain.SetDefaultPlace(pPlaceName: string);
var
  txtFile : TextFile;
begin
  // Set "pPlaceName" as the default place for the weather on start-up:
  // Write default place to file:
  AssignFile(txtFile, 'Default_Place.txt');
  Rewrite(txtFile);
  Writeln(txtFile, pPlaceName);
  CloseFile(txtFile);

  // Update the global default place variable:
  sDefaultPlace := pPlaceName;

  // Disable the set default place button:
  btnSetDefaultPlace.Enabled := False;

  // Update the default place name in the application status bar:
  stbarMain.Panels[1].Text := 'Default Place: ' + sDefaultPlace;
end;

procedure TfrmMain.tmrCheckConnectionTimer(Sender: TObject);
begin
  // Check the internet connection status every second:
  // Call the CheckInternetConnection function:
  if (CheckInternetConnection = True) then
    begin
      // Internet connected - enable all services that require it:
      pnlConnectionStatus.Visible := False;
      lblConnectionStatus.Visible := False;
      lblConnectionIcon.Visible := False;
      btnUpdateWeather.Enabled := True;
      lbledtCityName.Enabled := True;
      btnSearchWeather.Enabled := True;
    end
  else
    begin
      // Internet disconnected - disable all services that require it:
      pnlConnectionStatus.Visible := True;
      lblConnectionStatus.Visible := True;
      lblConnectionIcon.Visible := True;
      btnUpdateWeather.Enabled := False;
      lbledtCityName.Enabled := False;
      btnSearchWeather.Enabled := False;
    end;
end;

procedure TfrmMain.tmrSetUpdateStatusTimer(Sender: TObject);
var
  iMinutesSinceUpdate : Integer;
begin
  // Set the last updated status in the status bar:

  iMinutesSinceUpdate := MinutesBetween(Now, tTimeOfLastUpdate);

  if (iMinutesSinceUpdate = 0) then
    begin
      stbarMain.Panels[2].Text := 'Last updated just now';
    end
  else
  if (iMinutesSinceUpdate = 1) then
    begin
      stbarMain.Panels[2].Text := 'Last updated 1 minute ago';
    end
  else
  if (iMinutesSinceUpdate >= 60) then
    begin
      stbarMain.Panels[2].Text := 'Last updated more than an hour ago';
    end
  else
    begin
      stbarMain.Panels[2].Text := 'Last updated ' +
      IntToStr(iMinutesSinceUpdate) + ' minutes ago';
    end;
end;

procedure TfrmMain.tmrTimerTimer(Sender: TObject);
begin
  // Add current date/time to application status bar:
  stbarMain.Panels[0].Text := DateToStr(Now) + ' ' + TimeToStr(Now);
end;

procedure TfrmMain.WriteNewThemeToFile(pThemeName: string);
var
  txtFile : TextFile;
begin
  // Write application theme name to file:
  AssignFile(txtFile, 'Theme.txt');
  Rewrite(txtFile);
  Writeln(txtFile, pThemeName);
  CloseFile(txtFile);
end;

end.
