# LumoAuthApiClient::GetServerResponseDiscovery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization_server_metadata** | **String** |  | [optional] |
| **protected_resource_metadata** | **String** |  | [optional] |
| **www_authenticate_example** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetServerResponseDiscovery.new(
  authorization_server_metadata: null,
  protected_resource_metadata: null,
  www_authenticate_example: null
)
```

