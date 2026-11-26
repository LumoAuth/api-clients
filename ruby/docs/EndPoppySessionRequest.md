# LumoAuthApiClient::EndPoppySessionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **personal_agent** | **String** | The client_id of the Personal Agent, as the verification result gave it. |  |
| **sid** | **String** | The Session ID. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::EndPoppySessionRequest.new(
  personal_agent: null,
  sid: null
)
```

