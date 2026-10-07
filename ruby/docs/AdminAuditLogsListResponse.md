# LumoAuthApiClient::AdminAuditLogsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AuditLogEntry&gt;**](AuditLogEntry.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAuditLogsListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: audit_logs
)
```

