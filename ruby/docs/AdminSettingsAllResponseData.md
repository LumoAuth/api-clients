# LumoAuthApiClient::AdminSettingsAllResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general** | [**AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md) |  | [optional] |
| **authentication** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] |
| **branding** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] |
| **security** | [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] |
| **email** | [**EmailSenderSettings**](EmailSenderSettings.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSettingsAllResponseData.new(
  general: null,
  authentication: null,
  branding: null,
  security: null,
  email: null
)
```

