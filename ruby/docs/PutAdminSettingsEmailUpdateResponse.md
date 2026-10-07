# LumoAuthApiClient::PutAdminSettingsEmailUpdateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Hash&lt;String, Object&gt;** | Free-form email settings dictionary, stored as sent (keys merge on update); secret-looking keys are redacted. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminSettingsEmailUpdateResponse.new(
  data: null,
  message: null
)
```

