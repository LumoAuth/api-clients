# LumoAuthApiClient::GetJwksResponseKeysItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **kty** | **String** |  |  |
| **kid** | **String** |  |  |
| **use** | **String** |  | [optional] |
| **alg** | **String** |  | [optional] |
| **n** | **String** | RSA modulus, base64url (RSA keys). | [optional] |
| **e** | **String** | RSA exponent, base64url (RSA keys). | [optional] |
| **crv** | **String** | Curve name (EC keys). | [optional] |
| **x** | **String** | EC x coordinate, base64url (EC keys). | [optional] |
| **y** | **String** | EC y coordinate, base64url (EC keys). | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetJwksResponseKeysItem.new(
  kty: null,
  kid: null,
  use: sig,
  alg: RS256,
  n: null,
  e: null,
  crv: P-256,
  x: null,
  y: null
)
```

