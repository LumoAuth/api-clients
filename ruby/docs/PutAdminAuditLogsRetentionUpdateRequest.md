# LumoAuthApiClient::PutAdminAuditLogsRetentionUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **retention_days** | **Integer** | Days to keep audit entries: at least the shorter of 90 days and the plan window, at most the plan window. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminAuditLogsRetentionUpdateRequest.new(
  retention_days: null
)
```

