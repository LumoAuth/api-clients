# LumoAuthApiClient::AdminSettingsAllResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general** | [**AdminSettingsAllResponseDataGeneral**](AdminSettingsAllResponseDataGeneral.md) |  | [optional] |
| **authentication** | [**AuthenticationSettings**](AuthenticationSettings.md) |  | [optional] |
| **branding** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] |
| **security** | [**AdminSettingsAllResponseDataSecurity**](AdminSettingsAllResponseDataSecurity.md) |  | [optional] |
| **email** | **Hash&lt;String, Object&gt;** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] |

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

