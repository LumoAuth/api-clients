# LumoAuthApiClient::IssuePlatformTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grant_type** | **String** |  | [optional] |
| **subject_token** | **String** | A valid AAuth agent token (agent+jwt). | [optional] |
| **subject_token_type** | **String** |  | [optional] |
| **scope** | **String** | Optional space-delimited scopes; narrows (never widens) the agent capabilities. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssuePlatformTokenRequest.new(
  grant_type: urn:ietf:params:oauth:grant-type:token-exchange,
  subject_token: null,
  subject_token_type: urn:lumoauth:params:oauth:token-type:aauth-token,
  scope: null
)
```

