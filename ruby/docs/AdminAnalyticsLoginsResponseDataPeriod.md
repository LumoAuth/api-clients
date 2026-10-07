# LumoAuthApiClient::AdminAnalyticsLoginsResponseDataPeriod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **days** | **Integer** | Effective window, clamped to 1-90. | [optional] |
| **from** | **Time** |  | [optional] |
| **to** | **Time** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAnalyticsLoginsResponseDataPeriod.new(
  days: null,
  from: null,
  to: null
)
```

