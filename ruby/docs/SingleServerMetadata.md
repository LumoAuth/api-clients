# LumoAuthApiClient::SingleServerMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** |  |  |
| **authorization_servers** | **Array&lt;String&gt;** |  |  |
| **bearer_methods_supported** | **Array&lt;String&gt;** |  |  |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **dpop_bound_access_tokens_required** | **Boolean** |  | [optional] |
| **dpop_signing_alg_values_supported** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SingleServerMetadata.new(
  resource: null,
  authorization_servers: null,
  bearer_methods_supported: null,
  scopes_supported: null,
  dpop_bound_access_tokens_required: null,
  dpop_signing_alg_values_supported: null
)
```

