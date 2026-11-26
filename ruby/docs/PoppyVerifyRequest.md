# LumoAuthApiClient::PoppyVerifyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | The method of the request that you received. |  |
| **url** | **String** | The public address that the personal agent called (a query is ignored). https, or http for a loopback host during development. |  |
| **headers** | **Hash&lt;String, String&gt;** | The headers of the request by name. Read are Poppy-Session, Poppy-Version, Poppy-Extensions, Authorization and DPoP; send those, or all of them. |  |
| **required_scope** | [**PoppyVerifyRequestRequiredScope**](PoppyVerifyRequestRequiredScope.md) |  | [optional] |
| **resource** | **String** | Only for a service that accepts just the tokens issued for it (RFC 8707) — its resource identifier. The default token is then refused. | [optional] |
| **allow_replay** | **Boolean** | Accept a Session JWT that was verified before, for a service that checks one request in more than one place. | [optional][default to false] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::PoppyVerifyRequest.new(
  method: POST,
  url: https://api.example.com/orders/ord_7Hk2/exchanges,
  headers: null,
  required_scope: null,
  resource: null,
  allow_replay: null
)
```

