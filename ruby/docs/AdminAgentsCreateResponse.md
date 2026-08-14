# LumoAuthApiClient::AdminAgentsCreateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | The created agent, including the one-time secret/api key. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsCreateResponse.new(
  data: null,
  message: Agent created successfully
)
```

