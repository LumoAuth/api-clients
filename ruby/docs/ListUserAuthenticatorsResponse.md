# LumoAuthApiClient::ListUserAuthenticatorsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;MfaAuthenticator&gt;**](MfaAuthenticator.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **default** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::ListUserAuthenticatorsResponse.new(
  data: null,
  status: null,
  default: null
)
```

