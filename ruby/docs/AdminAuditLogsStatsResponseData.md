# LumoAuthApiClient::AdminAuditLogsStatsResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** |  | [optional] |
| **period** | [**AdminAuditLogsStatsResponseDataPeriod**](AdminAuditLogsStatsResponseDataPeriod.md) |  | [optional] |
| **by_event_type** | **Hash&lt;String, Integer&gt;** | Top 10 event types by count | [optional] |
| **by_action** | **Hash&lt;String, Integer&gt;** |  | [optional] |
| **by_severity** | **Hash&lt;String, Integer&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAuditLogsStatsResponseData.new(
  total: null,
  period: null,
  by_event_type: null,
  by_action: null,
  by_severity: null
)
```

