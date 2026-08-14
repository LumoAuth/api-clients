# LumoAuthApiClient::IssueAgentTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_type** | **String** |  | [optional] |
| **auth_token** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **request_token** | **String** |  | [optional] |
| **authorization_uri** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueAgentTokenResponse.new(
  request_type: auth,
  auth_token: null,
  expires_in: 900,
  token_type: auth+jwt,
  refresh_token: null,
  request_token: null,
  authorization_uri: null
)
```

