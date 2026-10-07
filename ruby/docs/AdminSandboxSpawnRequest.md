# LumoAuthApiClient::AdminSandboxSpawnRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **ttl_hours** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSandboxSpawnRequest.new(
  name: feature-foo,
  ttl_hours: 24
)
```

