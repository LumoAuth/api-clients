# LumoAuthApiClient::IssueResourceTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_token** | **String** |  | [optional] |
| **token_type** | **String** |  | [optional] |
| **expires_in** | **Integer** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueResourceTokenResponse.new(
  resource_token: null,
  token_type: resource+jwt,
  expires_in: 300
)
```

