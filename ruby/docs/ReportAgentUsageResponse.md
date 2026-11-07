# LumoAuthApiClient::ReportAgentUsageResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **recorded** | [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] |
| **budget** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ReportAgentUsageResponse.new(
  recorded: null,
  budget: null
)
```

