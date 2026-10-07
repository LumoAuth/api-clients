# LumoAuthApiClient::AdminAuditLogsExportResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AuditLogEntry&gt;**](AuditLogEntry.md) | Detailed entries | [optional] |
| **meta** | [**AdminAuditLogsExportResponseMeta**](AdminAuditLogsExportResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAuditLogsExportResponse.new(
  data: null,
  meta: null
)
```

