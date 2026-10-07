# LumoAuthApiClient::BackchannelAuthorizeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_req_id** | **String** |  |  |
| **expires_in** | **Integer** | Lifetime of the auth_req_id in seconds. |  |
| **interval** | **Integer** | Minimum polling interval in seconds (poll / ping modes). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::BackchannelAuthorizeResponse.new(
  auth_req_id: null,
  expires_in: 300,
  interval: 5
)
```

