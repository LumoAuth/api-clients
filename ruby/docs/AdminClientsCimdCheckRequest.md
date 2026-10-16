# LumoAuthApiClient::AdminClientsCimdCheckRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The Client Identifier URL (https, with a path). |  |
| **refresh** | **Boolean** | Ignore the cached document and fetch it again. | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminClientsCimdCheckRequest.new(
  client_id: https://client.example.com/oauth/metadata.json,
  refresh: null
)
```

