# LumoAuthApiClient::ApproveRequestResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **granted_ttl** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ApproveRequestResponse.new(
  request_id: null,
  status: approved,
  granted_ttl: null
)
```

