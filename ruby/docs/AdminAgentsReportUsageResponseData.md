# LumoAuthApiClient::AdminAgentsReportUsageResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recorded** | [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] |
| **budget** | **Hash&lt;String, Object&gt;** | Same shape as budget_policy in UserInfo: limits, usage in the current windows, exhausted. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsReportUsageResponseData.new(
  recorded: null,
  budget: null
)
```

