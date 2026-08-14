# LumoAuthApiClient::IssueDelegateTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delegate_sub** | **String** | Subject identifier of the delegate the agent token is issued to. | [optional] |
| **delegate_public_key** | **Object** | The delegate public key (JWK) bound into the agent token cnf. | [optional] |
| **audience** | **Object** | Optional audience (string or array of strings). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IssueDelegateTokenRequest.new(
  delegate_sub: user_42,
  delegate_public_key: null,
  audience: null
)
```

