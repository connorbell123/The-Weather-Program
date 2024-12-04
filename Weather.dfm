object fraWeatherDetails: TfraWeatherDetails
  Left = 0
  Top = 0
  Width = 778
  Height = 1417
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  PixelsPerInch = 100
  object lblAQIHelpCaption: TLabel
    Left = 173
    Top = 1257
    Width = 358
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Get more information on air quality data.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16570023
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lblReportCaption: TLabel
    Left = 174
    Top = 1302
    Width = 418
    Height = 28
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Issues with weather data? Report a concern now.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16570023
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object pnlCurrentTemperature: TPanel
    Left = 9
    Top = 6
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 0
    StyleElements = [seFont, seBorder]
    object lblCurrentTemperatureCaption: TLabel
      Left = 10
      Top = 11
      Width = 108
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Current '#13#10'Temperature'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblCurrentTemperature: TLabel
      Left = 10
      Top = 78
      Width = 55
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'#176'C'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentColor = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlFeelsLike: TPanel
    Left = 163
    Top = 6
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 1
    StyleElements = []
    object lblFeelsLikeCaption: TLabel
      Left = 10
      Top = 11
      Width = 82
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Feels Like'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsItalic]
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblFeelsLike: TLabel
      Left = 10
      Top = 78
      Width = 55
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'#176'C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlPressure: TPanel
    Left = 317
    Top = 6
    Width = 142
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 2
    StyleElements = []
    object lblPressureCaption: TLabel
      Left = 10
      Top = 11
      Width = 72
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Pressure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblPressure: TLabel
      Left = 10
      Top = 78
      Width = 76
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '-- mb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlHumidity: TPanel
    Left = 471
    Top = 6
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 3
    StyleElements = []
    object lblHumidityCaption: TLabel
      Left = 10
      Top = 11
      Width = 80
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Humidity'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblHumidity: TLabel
      Left = 10
      Top = 78
      Width = 49
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlVisibility: TPanel
    Left = 625
    Top = 6
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 4
    StyleElements = []
    object Label5: TLabel
      Left = 10
      Top = 11
      Width = 73
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Visibility'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblVisibility: TLabel
      Left = 10
      Top = 78
      Width = 58
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '-- m'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlWindSpeed: TPanel
    Left = 9
    Top = 157
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnHighlight
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    StyleElements = []
    object Label6: TLabel
      Left = 10
      Top = 13
      Width = 52
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Wind'#13#10'Speed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblWindSpeed: TLabel
      Left = 10
      Top = 77
      Width = 102
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '-- km/h'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlWindDirection: TPanel
    Left = 163
    Top = 157
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 6
    StyleElements = []
    object Label7: TLabel
      Left = 10
      Top = 13
      Width = 79
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Wind'#13#10'Direction'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblWindDirection: TLabel
      Left = 10
      Top = 78
      Width = 36
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'#176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlWindGustSpeed: TPanel
    Left = 317
    Top = 157
    Width = 142
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 7
    StyleElements = []
    object Label8: TLabel
      Left = 10
      Top = 13
      Width = 89
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Wind Gust'#13#10'Speed'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblWindGustSpeed: TLabel
      Left = 11
      Top = 78
      Width = 102
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '-- km/h'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlCloudCover: TPanel
    Left = 471
    Top = 157
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 8
    StyleElements = []
    object lblCloudCoverCaption: TLabel
      Left = 10
      Top = 13
      Width = 55
      Height = 50
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cloud '#13#10'Cover'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblCloudCover: TLabel
      Left = 10
      Top = 78
      Width = 49
      Height = 42
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -31
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlWeatherForecast: TPanel
    Left = 9
    Top = 310
    Width = 759
    Height = 348
    TabOrder = 9
    object lblWeatherForecastCaption: TLabel
      Left = 10
      Top = 11
      Width = 229
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '3-hourly Weather Forecast'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object pnlFirstHour: TPanel
      Left = 15
      Top = 45
      Width = 236
      Height = 292
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont]
      object lblTime1: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454143
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblTemp1: TLabel
        Left = 170
        Top = 4
        Width = 55
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLikeCaption1: TLabel
        Left = 10
        Top = 75
        Width = 69
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Feels Like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsItalic]
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLike1: TLabel
        Left = 189
        Top = 66
        Width = 36
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressureCaption1: TLabel
        Left = 10
        Top = 104
        Width = 62
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pressure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressure1: TLabel
        Left = 176
        Top = 95
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidityCaption1: TLabel
        Left = 10
        Top = 133
        Width = 67
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Humidity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidity1: TLabel
        Left = 176
        Top = 124
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblDescription1: TLabel
        Left = 10
        Top = 39
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCLoudCoverCaption1: TLabel
        Left = 10
        Top = 162
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cloud Cover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCloudCover1: TLabel
        Left = 193
        Top = 153
        Width = 32
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeedCaption1: TLabel
        Left = 10
        Top = 191
        Width = 89
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Speed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeed1: TLabel
        Left = 159
        Top = 182
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirectionCaption1: TLabel
        Left = 11
        Top = 220
        Width = 109
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Direction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirection1: TLabel
        Left = 201
        Top = 211
        Width = 24
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGustsCaption1: TLabel
        Left = 11
        Top = 249
        Width = 82
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Wind Gusts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGusts1: TLabel
        Left = 159
        Top = 243
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
    object pnlSecondHour: TPanel
      Left = 261
      Top = 45
      Width = 236
      Height = 292
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 1
      StyleElements = [seFont]
      object lblTime2: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454143
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblTemp2: TLabel
        Left = 170
        Top = 4
        Width = 55
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLikeCaption2: TLabel
        Left = 10
        Top = 75
        Width = 69
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Feels Like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsItalic]
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLike2: TLabel
        Left = 189
        Top = 66
        Width = 36
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressureCaption2: TLabel
        Left = 10
        Top = 104
        Width = 62
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pressure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressure2: TLabel
        Left = 176
        Top = 95
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidityCaption2: TLabel
        Left = 10
        Top = 133
        Width = 67
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Humidity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidity2: TLabel
        Left = 176
        Top = 124
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblDescription2: TLabel
        Left = 10
        Top = 39
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCloudCoverCaption2: TLabel
        Left = 10
        Top = 162
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cloud Cover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCloudCover2: TLabel
        Left = 193
        Top = 153
        Width = 32
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeedCaption2: TLabel
        Left = 10
        Top = 191
        Width = 89
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Speed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeed2: TLabel
        Left = 159
        Top = 182
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirectionCaption2: TLabel
        Left = 11
        Top = 220
        Width = 109
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Direction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirection2: TLabel
        Left = 201
        Top = 211
        Width = 24
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGustsCaption2: TLabel
        Left = 11
        Top = 249
        Width = 82
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Wind Gusts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGusts2: TLabel
        Left = 159
        Top = 240
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
    object pnlThirdHour: TPanel
      Left = 507
      Top = 45
      Width = 236
      Height = 292
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 2
      StyleElements = [seFont]
      object lblTime3: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454143
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblTemp3: TLabel
        Left = 170
        Top = 4
        Width = 55
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLikeCaption3: TLabel
        Left = 10
        Top = 75
        Width = 69
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Feels Like'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsItalic]
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblFeelsLike3: TLabel
        Left = 189
        Top = 66
        Width = 36
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176'C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressureCaption3: TLabel
        Left = 10
        Top = 104
        Width = 62
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Pressure'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPressure3: TLabel
        Left = 176
        Top = 95
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidityCaption3: TLabel
        Left = 10
        Top = 133
        Width = 67
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Humidity'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblHumidity3: TLabel
        Left = 176
        Top = 124
        Width = 49
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- mb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblDescription3: TLabel
        Left = 10
        Top = 39
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCloudCoverCaption3: TLabel
        Left = 10
        Top = 162
        Width = 90
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Cloud Cover'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCloudCover3: TLabel
        Left = 193
        Top = 153
        Width = 32
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeedCaption3: TLabel
        Left = 10
        Top = 191
        Width = 89
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Speed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindSpeed3: TLabel
        Left = 159
        Top = 182
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirectionCaption3: TLabel
        Left = 11
        Top = 220
        Width = 109
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Wind Direction'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindDirection3: TLabel
        Left = 201
        Top = 211
        Width = 24
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGustsCaption3: TLabel
        Left = 11
        Top = 249
        Width = 82
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Wind Gusts'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblWindGusts3: TLabel
        Left = 159
        Top = 240
        Width = 66
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '-- km/h'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
  end
  object pnlSunriseSunset: TPanel
    Left = 625
    Top = 157
    Width = 143
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 10
    StyleElements = []
    object lblSunriseCaption: TLabel
      Left = 10
      Top = 13
      Width = 62
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Sunrise'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblSunrise: TLabel
      Left = 10
      Top = 41
      Width = 16
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblSunsetCaption: TLabel
      Left = 10
      Top = 73
      Width = 57
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Sunset'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblSunset: TLabel
      Left = 10
      Top = 100
      Width = 16
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlAQI: TPanel
    Left = 9
    Top = 664
    Width = 142
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 11
    StyleElements = []
    object lblAQICaption: TLabel
      Left = 10
      Top = 11
      Width = 33
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'AQI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblAQI: TLabel
      Left = 10
      Top = 44
      Width = 32
      Height = 54
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -40
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblAQIStatus: TLabel
      Left = 10
      Top = 99
      Width = 12
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlAQIComponents: TPanel
    Left = 157
    Top = 664
    Width = 611
    Height = 142
    BevelOuter = bvNone
    Color = clHotLight
    ParentBackground = False
    TabOrder = 12
    StyleElements = []
    object lblAQIComponentsCaption: TLabel
      Left = 16
      Top = 11
      Width = 206
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Air Quality Components'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblCOCaption: TLabel
      Left = 16
      Top = 44
      Width = 132
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Carbon Monoxide'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNOCaption: TLabel
      Left = 17
      Top = 73
      Width = 87
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Nitric Oxide'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNO2Caption: TLabel
      Left = 17
      Top = 102
      Width = 126
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Nitrogen Dioxide'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblCO: TLabel
      Left = 165
      Top = 43
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNO: TLabel
      Left = 165
      Top = 72
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNO2: TLabel
      Left = 165
      Top = 101
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblO3Caption: TLabel
      Left = 238
      Top = 44
      Width = 47
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Ozone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblPM2_5Caption: TLabel
      Left = 239
      Top = 73
      Width = 50
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'PM 2.5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblPM10Caption: TLabel
      Left = 239
      Top = 102
      Width = 43
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'PM 10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblPM10: TLabel
      Left = 316
      Top = 101
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblPM2_5: TLabel
      Left = 316
      Top = 71
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblO3: TLabel
      Left = 316
      Top = 43
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNH3Caption: TLabel
      Left = 393
      Top = 44
      Width = 70
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Ammonia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblNH3: TLabel
      Left = 534
      Top = 42
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblSO2Caption: TLabel
      Left = 393
      Top = 73
      Width = 116
      Height = 21
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      BiDiMode = bdLeftToRight
      Caption = 'Sulphur Dioxide'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16570023
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblSO2: TLabel
      Left = 534
      Top = 71
      Width = 14
      Height = 23
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '--'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
    object lblAQIComponentsUnitsCaption: TLabel
      Left = 239
      Top = 8
      Width = 68
      Height = 28
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = '('#181'g/m'#179')'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      Font.Quality = fqClearType
      ParentFont = False
      StyleElements = [seClient, seBorder]
    end
  end
  object pnlHourlyAQIForecast: TPanel
    Left = 9
    Top = 812
    Width = 759
    Height = 417
    TabOrder = 13
    object lblAQIForecastCaption: TLabel
      Left = 10
      Top = 12
      Width = 232
      Height = 25
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Hourly Air Quality Forecast'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = []
      ParentFont = False
    end
    object pnlAQIForecast1: TPanel
      Left = 15
      Top = 46
      Width = 236
      Height = 352
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont]
      object lblAQITime1: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454016
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQI1: TLabel
        Left = 201
        Top = 4
        Width = 24
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCOCaption1: TLabel
        Left = 10
        Top = 75
        Width = 132
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Carbon Monoxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCO1: TLabel
        Left = 209
        Top = 72
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNOCaption1: TLabel
        Left = 10
        Top = 104
        Width = 87
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitric Oxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO1: TLabel
        Left = 209
        Top = 101
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2Caption1: TLabel
        Left = 10
        Top = 133
        Width = 126
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitrogen Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2_1: TLabel
        Left = 209
        Top = 130
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQIStatus1: TLabel
        Left = 10
        Top = 36
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3Caption1: TLabel
        Left = 10
        Top = 162
        Width = 47
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ozone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3_1: TLabel
        Left = 209
        Top = 159
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5Caption1: TLabel
        Left = 10
        Top = 191
        Width = 50
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 2.5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5_1: TLabel
        Left = 209
        Top = 188
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10Caption1: TLabel
        Left = 11
        Top = 220
        Width = 43
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10_1: TLabel
        Left = 209
        Top = 217
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3Caption1: TLabel
        Left = 11
        Top = 249
        Width = 70
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Ammonia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3_1: TLabel
        Left = 209
        Top = 246
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2Caption1: TLabel
        Left = 11
        Top = 278
        Width = 116
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Sulphur Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2_1: TLabel
        Left = 209
        Top = 275
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQICaption1: TLabel
        Left = 197
        Top = 42
        Width = 28
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'AQI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblUnits1: TLabel
        Left = 170
        Top = 302
        Width = 55
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '('#181'g/m'#179')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
    object lblAQIForecast2: TPanel
      Left = 261
      Top = 46
      Width = 236
      Height = 352
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 1
      StyleElements = [seFont]
      object lblAQITime2: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454016
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQI2: TLabel
        Left = 201
        Top = 4
        Width = 24
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCOCaption2: TLabel
        Left = 10
        Top = 75
        Width = 132
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Carbon Monoxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCO_2: TLabel
        Left = 209
        Top = 72
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNOCaption2: TLabel
        Left = 10
        Top = 104
        Width = 87
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitric Oxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO_2: TLabel
        Left = 209
        Top = 101
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2Caption2: TLabel
        Left = 10
        Top = 133
        Width = 126
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitrogen Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2_2: TLabel
        Left = 209
        Top = 130
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQIStatus2: TLabel
        Left = 10
        Top = 39
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3Caption2: TLabel
        Left = 10
        Top = 162
        Width = 47
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ozone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3_2: TLabel
        Left = 209
        Top = 159
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5Caption2: TLabel
        Left = 10
        Top = 191
        Width = 50
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 2.5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5_2: TLabel
        Left = 209
        Top = 188
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10Caption2: TLabel
        Left = 11
        Top = 220
        Width = 43
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10_2: TLabel
        Left = 209
        Top = 217
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3Caption2: TLabel
        Left = 11
        Top = 249
        Width = 70
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Ammonia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3_2: TLabel
        Left = 209
        Top = 246
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2Caption2: TLabel
        Left = 11
        Top = 278
        Width = 116
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Sulphur Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2_2: TLabel
        Left = 209
        Top = 275
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQICaption2: TLabel
        Left = 197
        Top = 42
        Width = 28
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'AQI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblUnits2: TLabel
        Left = 170
        Top = 302
        Width = 55
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '('#181'g/m'#179')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
    object lblAQIForecast3: TPanel
      Left = 507
      Top = 46
      Width = 236
      Height = 352
      BevelOuter = bvNone
      BorderWidth = 1
      Color = 4075309
      ParentBackground = False
      TabOrder = 2
      StyleElements = [seFont]
      object lblAQITime3: TLabel
        Left = 10
        Top = 13
        Width = 89
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '-- AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8454016
        Font.Height = -19
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQI3: TLabel
        Left = 201
        Top = 4
        Width = 24
        Height = 42
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -31
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCOCaption3: TLabel
        Left = 10
        Top = 75
        Width = 132
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Carbon Monoxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblCO_3: TLabel
        Left = 209
        Top = 72
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNOCaption3: TLabel
        Left = 10
        Top = 104
        Width = 87
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitric Oxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO_3: TLabel
        Left = 209
        Top = 101
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2Caption3: TLabel
        Left = 10
        Top = 133
        Width = 126
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Nitrogen Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNO2_3: TLabel
        Left = 209
        Top = 130
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQIStatus3: TLabel
        Left = 10
        Top = 39
        Width = 16
        Height = 28
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3Caption3: TLabel
        Left = 10
        Top = 162
        Width = 47
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ozone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblO3_3: TLabel
        Left = 209
        Top = 159
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5Caption3: TLabel
        Left = 10
        Top = 191
        Width = 50
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 2.5'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM2_5_3: TLabel
        Left = 209
        Top = 188
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10Caption3: TLabel
        Left = 11
        Top = 220
        Width = 43
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'PM 10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblPM10_3: TLabel
        Left = 209
        Top = 217
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3Caption3: TLabel
        Left = 11
        Top = 249
        Width = 70
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Ammonia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblNH3_3: TLabel
        Left = 209
        Top = 246
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2Caption3: TLabel
        Left = 11
        Top = 278
        Width = 116
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        BiDiMode = bdLeftToRight
        Caption = 'Sulphur Dioxide'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblSO2_3: TLabel
        Left = 209
        Top = 275
        Width = 16
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = '--'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Segoe UI Semilight'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblAQICaption3: TLabel
        Left = 197
        Top = 42
        Width = 28
        Height = 21
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Alignment = taRightJustify
        Caption = 'AQI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16570023
        Font.Height = -16
        Font.Name = 'Segoe UI Semibold'
        Font.Style = []
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
      object lblUnits3: TLabel
        Left = 170
        Top = 302
        Width = 55
        Height = 23
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = '('#181'g/m'#179')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Segoe UI Light'
        Font.Style = []
        Font.Quality = fqClearType
        ParentFont = False
        StyleElements = [seClient, seBorder]
      end
    end
  end
  object btnAQIHelp: TBitBtn
    Left = 24
    Top = 1255
    Width = 127
    Height = 35
    Caption = '&More'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 14
    OnClick = btnAQIHelpClick
  end
  object btnReport: TBitBtn
    Left = 24
    Top = 1300
    Width = 127
    Height = 35
    Caption = '&Report'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ModalResult = 3
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 15
    OnClick = btnReportClick
  end
end
