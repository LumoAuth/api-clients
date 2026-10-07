# LumoAuthApiClient::GetMfaPolicyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**MfaPolicy**](MfaPolicy.md) |  | [optional] |
| **effective_allowed_factors** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::GetMfaPolicyResponse.new(
  data: null,
  effective_allowed_factors: null
)
```

