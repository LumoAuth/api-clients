# LumoAuthApiClient::AdminAuditLogsRetentionResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retention_days** | **Integer** | Effective retention, capped by the plan limit | [optional] |
| **auto_delete** | **Boolean** |  | [optional] |
| **plan_limit_days** | **Integer** | Plan cap; null when unlimited or billing enforcement is off | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAuditLogsRetentionResponseData.new(
  retention_days: 90,
  auto_delete: null,
  plan_limit_days: null
)
```

