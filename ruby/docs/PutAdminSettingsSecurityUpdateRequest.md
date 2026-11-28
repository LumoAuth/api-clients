# LumoAuthApiClient::PutAdminSettingsSecurityUpdateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dpop_require_nonce** | **Boolean** | Require a server nonce in DPoP proofs. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PutAdminSettingsSecurityUpdateRequest.new(
  dpop_require_nonce: null
)
```

