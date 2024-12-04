object dmAPI: TdmAPI
  Height = 480
  Width = 1200
  object rstClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'https://api.openweathermap.org/data/2.5/weather?q=Scranton&units' +
      '=metric&appid=38b22b3e0bb8550a67648889dc2e66e9'
    Params = <>
    SynchronizedEvents = False
    Left = 88
    Top = 24
  end
  object rstRequest: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = rstClient
    Params = <
      item
        Name = 'q'
        Value = 'Scranton'
      end
      item
        Name = 'appid'
        Value = '38b22b3e0bb8550a67648889dc2e66e9'
      end>
    Response = rstResponse
    SynchronizedEvents = False
    Left = 48
    Top = 24
  end
  object rstResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 296
    Top = 40
  end
  object tblData: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'coord'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'weather'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'base'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'main'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'visibility'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'wind'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'clouds'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'dt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'sys'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'timezone'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'name'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cod'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 8
    Top = 24
  end
  object rstResponseDataAdapter: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblData
    FieldDefs = <>
    Response = rstResponse
    Left = 184
    Top = 64
  end
  object rstForecastClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://api.openweathermap.org/data/2.5/forecast?lat=-26.1419501&' +
      'lon=28.1767176&appid=38b22b3e0bb8550a67648889dc2e66e9'
    Params = <>
    SynchronizedEvents = False
    Left = 40
    Top = 232
  end
  object rstForecastRequest: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = rstForecastClient
    Params = <
      item
        Name = 'lat'
        Value = '-26.1419501'
      end
      item
        Name = 'lon'
        Value = '28.1767176'
      end
      item
        Name = 'appid'
        Value = '38b22b3e0bb8550a67648889dc2e66e9'
      end
      item
        Name = 'units'
        Value = 'metric'
      end
      item
        Name = 'cnt'
        Value = '3'
      end>
    Response = rstForecastResponse
    SynchronizedEvents = False
    Left = 160
    Top = 240
  end
  object rstForecastResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 280
    Top = 232
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblForecastData
    FieldDefs = <>
    ResponseJSON = rstForecastResponse
    Left = 336
    Top = 248
  end
  object tblForecastData: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cod'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'message'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cnt'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'list'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'city'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvUpdateChngFields, uvUpdateMode, uvLockMode, uvLockPoint, uvLockWait, uvRefreshMode, uvFetchGeneratorsPoint, uvCheckRequired, uvCheckReadOnly, uvCheckUpdatable, uvAutoCommitUpdates]
    UpdateOptions.LockWait = True
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 224
    Top = 232
  end
  object rstAQIClient: TRESTClient
    BaseURL = 
      'http://api.openweathermap.org/data/2.5/air_pollution?lat=-26.136' +
      '7&lon=28.1511&appid=38b22b3e0bb8550a67648889dc2e66e9'
    Params = <>
    SynchronizedEvents = False
    Left = 128
    Top = 368
  end
  object rstAQIRequest: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = rstAQIClient
    Params = <
      item
        Name = 'lat'
        Value = '-26.1367'
      end
      item
        Name = 'lon'
        Value = '28.1511'
      end
      item
        Name = 'appid'
        Value = '38b22b3e0bb8550a67648889dc2e66e9'
      end>
    Response = rstAQIResponse
    SynchronizedEvents = False
    Left = 240
    Top = 376
  end
  object rstAQIResponse: TRESTResponse
    Left = 368
    Top = 376
  end
  object rstAQIForecastClient: TRESTClient
    Accept = 'application/json'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 
      'http://api.openweathermap.org/data/2.5/air_pollution/forecast?la' +
      't=-26.1367&lon=28.1511&appid=38b22b3e0bb8550a67648889dc2e66e9'
    ContentType = 'application/json'
    Params = <>
    SynchronizedEvents = False
    Left = 704
    Top = 120
  end
  object rstAQIForecastRequest: TRESTRequest
    AssignedValues = [rvAccept, rvConnectTimeout, rvReadTimeout]
    Accept = 'application/json'
    Client = rstAQIForecastClient
    Params = <
      item
        Name = 'lat'
        Value = '-26.1367'
      end
      item
        Name = 'lon'
        Value = '28.1511'
      end
      item
        Name = 'appid'
        Value = '38b22b3e0bb8550a67648889dc2e66e9'
      end>
    Response = rstAQIForecastResponse
    SynchronizedEvents = False
    Left = 864
    Top = 80
  end
  object rstAQIForecastResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 848
    Top = 168
  end
end
