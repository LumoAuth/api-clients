# LumoAuthApiClient::BackchannelAuthorizeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auth_req_id** | **String** |  |  |
| **expires_in** | **Integer** | Lifetime of the auth_req_id in seconds: for an application 120, or a shorter requested_expiry (at least 30); for an agent-initiated request 300, or a requested_expiry between 30 and 600. |  |
| **interval** | **Integer** | Minimum polling interval in seconds (poll / ping modes). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::BackchannelAuthorizeResponse.new(
  auth_req_id: null,
  expires_in: 120,
  interval: 5
)
```

