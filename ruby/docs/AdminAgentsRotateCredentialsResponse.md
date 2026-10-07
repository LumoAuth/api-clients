# LumoAuthApiClient::AdminAgentsRotateCredentialsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Object** | The rotated credentials, including the one-time secret. | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAgentsRotateCredentialsResponse.new(
  data: null,
  message: Agent credentials rotated successfully
)
```

