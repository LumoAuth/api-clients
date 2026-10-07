# LumoAuthApiClient::AdminSocialProvidersAvailableResponseDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **required_fields** | **Array&lt;String&gt;** |  | [optional] |
| **optional_fields** | **Array&lt;String&gt;** |  | [optional] |
| **default_scopes** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSocialProvidersAvailableResponseDataItem.new(
  provider: google,
  name: Google,
  required_fields: null,
  optional_fields: null,
  default_scopes: null
)
```

