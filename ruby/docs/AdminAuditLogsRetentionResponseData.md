# LumoAuthApiClient::AdminAuditLogsRetentionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retention_days** | **Integer** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] |
| **auto_delete** | **Boolean** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional] |
| **plan_limit_days** | **Integer** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] |
| **effective_retention_days** | **Integer** | How long entries are kept now; null when nothing is deleted | [optional] |
| **min_retention_days** | **Integer** |  | [optional] |
| **max_retention_days** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAuditLogsRetentionResponseData.new(
  retention_days: 90,
  auto_delete: null,
  plan_limit_days: null,
  effective_retention_days: null,
  min_retention_days: null,
  max_retention_days: null
)
```

