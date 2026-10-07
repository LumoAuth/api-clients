# LumoAuthApiClient::BlockUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**User**](User.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::BlockUserResponse.new(
  data: null,
  message: User blocked successfully
)
```

