unit Settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmSettings = class(TForm)
    pgctrlMain: TPageControl;
    btnClose: TButton;
    lblCloseCaption: TLabel;
    lblSettingsHeading: TLabel;
    tbsGeneral: TTabSheet;
    tbsAppearance: TTabSheet;
    cmbThemes: TComboBox;
    lblTitle: TLabel;
    lblCaption: TLabel;
    lblDefaultPlaceHeading: TLabel;
    lblDefaultPlaceCaption: TLabel;
    cmbPlaces: TComboBox;
    btnSaveGeneral: TButton;
    lblSaveCaption: TLabel;
    btnApplyTheme: TButton;
    lblApplyCaption: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSaveGeneralClick(Sender: TObject);
    procedure btnApplyThemeClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadPlacesFromFile();

  public
    { Public declarations }
  end;

var
  frmSettings: TfrmSettings;


implementation

{$R *.dfm}

uses Main, dmMain;

procedure TfrmSettings.btnApplyThemeClick(Sender: TObject);
begin
  // Apply the new theme:
  with frmMain do
    begin
      if (cmbThemes.ItemIndex <> -1) then
        begin
          // Write the new theme to the file:
          WriteNewThemeToFile(cmbThemes.Items[cmbThemes.ItemIndex]);
          ReadThemeFromFile;
          ApplyThemeToApplication();
          cmbThemes.Text := sTheme;
        end
      else
        begin
          MessageDlg('Please select a valid theme and try again.',
          TMsgDlgType.mtError, [mbOK], 0);
        end;
    end;
end;

procedure TfrmSettings.btnCloseClick(Sender: TObject);
begin
  // Close
  frmSettings.Close;
end;

procedure TfrmSettings.btnSaveGeneralClick(Sender: TObject);
begin
  // Set the new default place
  if  (cmbPlaces.ItemIndex <> -1) then
    begin
      frmMain.SetDefaultPlace(cmbPlaces.Items[cmbPlaces.ItemIndex]);
    end
  else
    begin
      MessageDlg('Please select a valid place name and try again.',
      TMsgDlgType.mtError, [mbOK], 0);
    end;
end;

procedure TfrmSettings.FormActivate(Sender: TObject);
begin
  // Form Activate
  LoadPlacesFromFile();
  frmMain.ReadThemeFromFile;
  cmbThemes.Text := frmMain.sTheme;
end;


procedure TfrmSettings.LoadPlacesFromFile;
var
  txtFile : TextFile;
  sLine : string;
begin
  // Load places from "My_Places.txt" into the combo box
  // Load My Places from "My_Places.txt";
  if FileExists('My_Places.txt') then
    begin
      AssignFile(txtFile, 'My_Places.txt');
      Reset(txtFile);
      cmbPlaces.Clear;
      while not EOF(txtFile) do
        begin
          Readln(txtFile, sLine);
          cmbPlaces.Items.Add(sLine);
        end;
      CloseFile(txtFile);
    end
  else
    begin
      MessageDlg('Could not locate the "My_Places.txt" application file.' +
      #13 + 'A blank "My Places" file was created.',
      TMsgDlgType.mtError, [mbOK], 0);
      AssignFile(txtFile, 'My_Places.txt');
      Rewrite(txtFile);
      CloseFile(txtFile);
    end;
end;

end.
