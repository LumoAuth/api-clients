# LumoAuthApiClient::RequestPermissionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **risk_level** | **String** |  | [optional] |
| **task_id** | **String** |  | [optional] |
| **token_url** | **String** | Present when approved. | [optional] |
| **granted_ttl** | **Integer** | Present when approved. | [optional] |
| **status_url** | **String** | Present when pending. | [optional] |
| **expires_at** | **Time** | Present when pending. | [optional] |
| **message** | **String** | Present when pending. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RequestPermissionResponse.new(
  request_id: null,
  status: approved,
  risk_level: null,
  task_id: null,
  token_url: null,
  granted_ttl: null,
  status_url: null,
  expires_at: null,
  message: null
)
```

