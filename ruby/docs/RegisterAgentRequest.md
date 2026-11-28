# LumoAuthApiClient::RegisterAgentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent** | **Hash&lt;String, Object&gt;** | The agent to register or update (name, description, identity, capabilities, ...). The same fields may also be sent at the top level. | [optional] |
| **email** | **String** | Optional inline sign-in of the person who registers the agent; a session or access token is preferred. | [optional] |
| **password** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::RegisterAgentRequest.new(
  agent: null,
  email: null,
  password: null
)
```

