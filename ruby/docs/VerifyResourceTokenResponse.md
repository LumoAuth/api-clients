# LumoAuthApiClient::VerifyResourceTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **resource** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **auth_request_url** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyResourceTokenResponse.new(
  active: true,
  resource: null,
  scope: null,
  auth_request_url: null,
  error: null
)
```

