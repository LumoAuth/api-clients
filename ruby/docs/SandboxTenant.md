# LumoAuthApiClient::SandboxTenant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **name** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **expires_at** | **Time** |  | [optional] |
| **owner_email** | **String** |  | [optional] |
| **spawned_from** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SandboxTenant.new(
  slug: null,
  name: null,
  created_at: null,
  expires_at: null,
  owner_email: null,
  spawned_from: null
)
```

