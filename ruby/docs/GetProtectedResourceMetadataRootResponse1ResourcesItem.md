# LumoAuthApiClient::GetProtectedResourceMetadataRootResponse1ResourcesItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource** | **String** |  |  |
| **resource_metadata_url** | **String** | Per-server protected resource metadata URL. |  |
| **authorization_servers** | **Array&lt;String&gt;** | The organization&#39;s issuer identifier (RFC 8414). |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetProtectedResourceMetadataRootResponse1ResourcesItem.new(
  resource: null,
  resource_metadata_url: null,
  authorization_servers: null
)
```

