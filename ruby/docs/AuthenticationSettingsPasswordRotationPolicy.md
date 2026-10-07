# LumoAuthApiClient::AuthenticationSettingsPasswordRotationPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |
| **max_age_days** | **Integer** |  | [optional] |
| **notify_before_days** | **Integer** |  | [optional] |
| **history_count** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AuthenticationSettingsPasswordRotationPolicy.new(
  enabled: null,
  max_age_days: null,
  notify_before_days: null,
  history_count: null
)
```

