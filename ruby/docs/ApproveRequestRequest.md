# LumoAuthApiClient::ApproveRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ttl** | **Integer** | Optional TTL override in seconds. | [optional] |
| **notes** | **String** | Optional reviewer notes (internal; never shown to the agent). | [optional] |
| **agent_message** | **String** | Optional message the agent MAY read on the status endpoint / callback. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ApproveRequestRequest.new(
  ttl: null,
  notes: null,
  agent_message: null
)
```

