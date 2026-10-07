# LumoAuthApiClient::GetSsfConfigurationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spec_version** | **String** |  | [optional] |
| **issuer** | **String** |  | [optional] |
| **jwks_uri** | **String** |  | [optional] |
| **delivery_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **configuration_endpoint** | **String** |  | [optional] |
| **verification_endpoint** | **String** |  | [optional] |
| **authorization_schemes** | [**Array&lt;GetSsfConfigurationResponseAuthorizationSchemesItem&gt;**](GetSsfConfigurationResponseAuthorizationSchemesItem.md) |  | [optional] |
| **events_supported** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetSsfConfigurationResponse.new(
  spec_version: 1_0,
  issuer: null,
  jwks_uri: null,
  delivery_methods_supported: null,
  configuration_endpoint: null,
  verification_endpoint: null,
  authorization_schemes: null,
  events_supported: null
)
```

