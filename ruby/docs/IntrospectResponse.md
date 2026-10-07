# LumoAuthApiClient::IntrospectResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** |  |  |
| **token_type** | **String** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] |
| **scope** | **String** | Space-separated scopes. | [optional] |
| **client_id** | **String** |  | [optional] |
| **sub** | **String** | User id, or client_… / agent_… for non-user subjects. | [optional] |
| **username** | **String** | The user&#39;s email (user-bound tokens only). | [optional] |
| **exp** | **Integer** | Expiry, Unix seconds. | [optional] |
| **iat** | **Integer** | Issued-at, Unix seconds. | [optional] |
| **nbf** | **Integer** | Not-before, Unix seconds (JWT tokens only). | [optional] |
| **iss** | **String** | Issuer identifier of this organization. | [optional] |
| **aud** | [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] |
| **jti** | **String** | JWT id (JWT tokens only). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::IntrospectResponse.new(
  active: null,
  token_type: Bearer,
  scope: openid profile,
  client_id: null,
  sub: null,
  username: null,
  exp: null,
  iat: null,
  nbf: null,
  iss: null,
  aud: null,
  jti: null
)
```

