# LumoAuthApiClient::AdminAgentsCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Required. Human-readable agent name. | [optional] |
| **description** | **String** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsCreateRequest.new(
  name: Invoice bot,
  description: null,
  capabilities: null
)
```

