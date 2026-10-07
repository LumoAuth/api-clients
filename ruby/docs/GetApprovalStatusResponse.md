# LumoAuthApiClient::GetApprovalStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approval_token** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **impact** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **responded_at** | **Time** |  | [optional] |
| **approved_by** | [**GetApprovalStatusResponseApprovedBy**](GetApprovalStatusResponseApprovedBy.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetApprovalStatusResponse.new(
  approval_token: null,
  status: approved,
  task_id: null,
  impact: null,
  reason: null,
  responded_at: null,
  approved_by: null
)
```

