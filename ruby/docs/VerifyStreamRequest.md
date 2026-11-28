# LumoAuthApiClient::VerifyStreamRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stream_id** | **String** |  | [optional] |
| **state** | **String** | Echoed in the verification event. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyStreamRequest.new(
  stream_id: null,
  state: null
)
```

