# LumoAuthApiClient::MarkUserVerifiedResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**User**](User.md) |  | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::MarkUserVerifiedResponse.new(
  data: null,
  message: User email marked as verified
)
```

