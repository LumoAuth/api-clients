# LumoAuthApiClient::ListMyAuthenticatorsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **default** | **String** |  | [optional] |
| **authenticators** | [**Array&lt;MfaAuthenticator&gt;**](MfaAuthenticator.md) |  | [optional] |
| **recovery_codes** | [**ListMyAuthenticatorsResponseRecoveryCodes**](ListMyAuthenticatorsResponseRecoveryCodes.md) |  | [optional] |
| **allowed_types** | **Array&lt;String&gt;** |  | [optional] |
| **recommended_type** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListMyAuthenticatorsResponse.new(
  status: null,
  default: null,
  authenticators: null,
  recovery_codes: null,
  allowed_types: null,
  recommended_type: null
)
```

