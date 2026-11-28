# LumoAuthApiClient::AttestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attestation_token** | **String** | The workload OIDC token (JWT). |  |
| **scope** | [**AttestRequestScope**](AttestRequestScope.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AttestRequest.new(
  attestation_token: null,
  scope: null
)
```

