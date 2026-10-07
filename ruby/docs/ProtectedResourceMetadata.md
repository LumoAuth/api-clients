# LumoAuthApiClient::ProtectedResourceMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** | The MCP server&#39;s resource identifier. |  |
| **authorization_servers** | **Array&lt;String&gt;** | This organization&#39;s authorization server metadata URL. |  |
| **bearer_methods_supported** | **Array&lt;String&gt;** |  |  |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |
| **dpop_bound_access_tokens_required** | **Boolean** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional] |
| **dpop_signing_alg_values_supported** | **Array&lt;String&gt;** | Only with dpop_bound_access_tokens_required. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ProtectedResourceMetadata.new(
  resource: null,
  authorization_servers: null,
  bearer_methods_supported: [&quot;header&quot;],
  scopes_supported: null,
  dpop_bound_access_tokens_required: null,
  dpop_signing_alg_values_supported: null
)
```

