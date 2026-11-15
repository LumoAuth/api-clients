# LumoAuthApiClient::AdminAnalyticsDashboardResponseDataAudit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events_last7_days** | **Integer** | Audit events of the last 7 days, or of the audit retention period of the plan when that is shorter. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAnalyticsDashboardResponseDataAudit.new(
  events_last7_days: null
)
```

