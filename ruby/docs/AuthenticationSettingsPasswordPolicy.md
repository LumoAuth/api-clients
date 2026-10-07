# LumoAuthApiClient::AuthenticationSettingsPasswordPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template** | **String** |  | [optional] |
| **min_length** | **Integer** |  | [optional] |
| **require_special** | **Boolean** |  | [optional] |
| **require_numbers** | **Boolean** |  | [optional] |
| **require_uppercase** | **Boolean** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthenticationSettingsPasswordPolicy.new(
  template: null,
  min_length: null,
  require_special: null,
  require_numbers: null,
  require_uppercase: null
)
```

