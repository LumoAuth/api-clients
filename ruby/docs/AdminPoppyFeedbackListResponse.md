# LumoAuthApiClient::AdminPoppyFeedbackListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;AdminPoppyFeedbackListResponseDataItem&gt;**](AdminPoppyFeedbackListResponseDataItem.md) |  | [optional] |
| **meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] |
| **resource_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminPoppyFeedbackListResponse.new(
  data: null,
  meta: null,
  pagination: null,
  resource_type: personal_agent_feedback
)
```

