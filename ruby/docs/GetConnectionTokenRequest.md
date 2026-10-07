# LumoAuthApiClient::GetConnectionTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | User UUID or email for user-delegated grants. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetConnectionTokenRequest.new(
  user_id: null
)
```

