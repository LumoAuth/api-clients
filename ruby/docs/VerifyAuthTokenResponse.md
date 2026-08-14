# LumoAuthApiClient::VerifyAuthTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  | [optional] |
| **agent** | **String** |  | [optional] |
| **agent_delegate** | **String** |  | [optional] |
| **resource** | **String** |  | [optional] |
| **sub** | **String** |  | [optional] |
| **scope** | **String** |  | [optional] |
| **cnf_jkt** | **String** |  | [optional] |
| **act** | **Object** |  | [optional] |
| **pop_required** | **Boolean** |  | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::VerifyAuthTokenResponse.new(
  active: true,
  agent: null,
  agent_delegate: null,
  resource: null,
  sub: null,
  scope: null,
  cnf_jkt: null,
  act: null,
  pop_required: true,
  error: null
)
```

