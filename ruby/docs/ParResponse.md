# LumoAuthApiClient::ParResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_uri** | **String** |  |  |
| **expires_in** | **Integer** | Lifetime of the request_uri in seconds. |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ParResponse.new(
  request_uri: urn:ietf:params:oauth:request_uri:…,
  expires_in: 600
)
```

