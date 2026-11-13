# LumoAuthApiClient::AdminSandboxSpawnResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **slug** | **String** |  |  |
| **name** | **String** |  |  |
| **created_at** | **Time** |  |  |
| **expires_at** | **Time** |  | [optional] |
| **owner_email** | **String** |  | [optional] |
| **spawned_from** | **String** |  | [optional] |
| **api_key** | **String** | API key of the sandbox, with every Admin API scope. Shown only in this response; it expires with the sandbox. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminSandboxSpawnResponseData.new(
  slug: null,
  name: null,
  created_at: null,
  expires_at: null,
  owner_email: null,
  spawned_from: null,
  api_key: lmk_3f9c…
)
```

