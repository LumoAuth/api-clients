# LumoAuthApiClient::GetMeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **mfa_enabled** | **Boolean** |  | [optional] |
| **roles** | **Array&lt;String&gt;** |  | [optional] |
| **capabilities** | **Array&lt;String&gt;** |  | [optional] |
| **tenant** | [**GroupRef**](GroupRef.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetMeResponse.new(
  subject_type: null,
  id: null,
  email: null,
  name: null,
  mfa_enabled: null,
  roles: null,
  capabilities: null,
  tenant: null
)
```

