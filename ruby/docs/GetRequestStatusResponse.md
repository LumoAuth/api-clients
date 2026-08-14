# LumoAuthApiClient::GetRequestStatusResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **risk_level** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **token_url** | **String** | Present when approved. | [optional] |
| **granted_ttl** | **Integer** | Present when approved. | [optional] |
| **review_notes** | **String** | Present when denied. | [optional] |
| **expires_at** | **Time** | Present when pending. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetRequestStatusResponse.new(
  request_id: null,
  status: pending,
  risk_level: null,
  task_id: null,
  token_url: null,
  granted_ttl: null,
  review_notes: null,
  expires_at: null
)
```

