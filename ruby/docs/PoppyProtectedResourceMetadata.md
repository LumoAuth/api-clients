# LumoAuthApiClient::PoppyProtectedResourceMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** |  |  |
| **authorization_servers** | **Array&lt;String&gt;** |  |  |
| **bearer_methods_supported** | **Array&lt;String&gt;** |  | [optional] |
| **scopes_supported** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyProtectedResourceMetadata.new(
  resource: https://example.com,
  authorization_servers: null,
  bearer_methods_supported: null,
  scopes_supported: null
)
```

