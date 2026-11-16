# LumoAuthApiClient::PutAdminSettingsBrandingUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**BrandingSettings**](BrandingSettings.md) |  | [optional] |
| **rejected** | **Array&lt;String&gt;** | Keys whose value was refused by validation and not saved. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminSettingsBrandingUpdateResponse.new(
  data: null,
  rejected: null,
  message: null
)
```

