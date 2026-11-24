# LumoAuthApiClient::AdminSandboxSpawnRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A label for the sandbox: one line of text, without control characters and without \&quot;&lt;\&quot; or \&quot;&gt;\&quot;. | [optional] |
| **ttl_hours** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSandboxSpawnRequest.new(
  name: feature-foo,
  ttl_hours: 24
)
```

