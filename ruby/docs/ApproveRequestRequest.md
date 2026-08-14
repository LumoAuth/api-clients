# LumoAuthApiClient::ApproveRequestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ttl** | **Integer** | Optional TTL override in seconds. | [optional] |
| **notes** | **String** | Optional reviewer notes. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ApproveRequestRequest.new(
  ttl: null,
  notes: null
)
```

