# LumoAuthApiClient::PoppyError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  |  |
| **error_description** | **String** | For the developer of the personal agent. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyError.new(
  error: invalid_session,
  error_description: null
)
```

