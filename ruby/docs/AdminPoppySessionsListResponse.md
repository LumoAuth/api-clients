# LumoAuthApiClient::AdminPoppySessionsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AdminPoppySessionsListResponseDataItem&gt;**](AdminPoppySessionsListResponseDataItem.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppySessionsListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: personal_agent_sessions
)
```

