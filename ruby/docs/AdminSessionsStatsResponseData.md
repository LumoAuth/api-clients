# LumoAuthApiClient::AdminSessionsStatsResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | All sessions, active or not | [optional] |
| **active** | **Integer** |  | [optional] |
| **inactive** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSessionsStatsResponseData.new(
  total: null,
  active: null,
  inactive: null
)
```

