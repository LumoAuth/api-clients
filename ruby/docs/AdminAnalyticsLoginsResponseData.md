# LumoAuthApiClient::AdminAnalyticsLoginsResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **daily** | [**Array&lt;AdminAnalyticsLoginsResponseDataDailyItem&gt;**](AdminAnalyticsLoginsResponseDataDailyItem.md) | One row per calendar day with at least one login attempt, ascending. | [optional] |
| **period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAnalyticsLoginsResponseData.new(
  daily: null,
  period: null
)
```

