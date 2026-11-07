# LumoAuthApiClient::AdminAgentsReportUsageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tokens** | **Integer** | Model tokens used since the last report (input and output together). | [optional] |
| **cost_usd** | **Float** | Cost in USD since the last report. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsReportUsageRequest.new(
  tokens: 1530,
  cost_usd: 0.0042
)
```

