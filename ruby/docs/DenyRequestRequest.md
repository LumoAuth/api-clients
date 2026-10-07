# LumoAuthApiClient::DenyRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | Optional denial reason (internal; never shown to the agent). | [optional] |
| **agent_message** | **String** | Optional message the agent MAY read on the status endpoint / callback. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::DenyRequestRequest.new(
  reason: null,
  agent_message: null
)
```

