# LumoAuthApiClient::SubmitLoginJsonResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **challenge_url** | **String** | Path of the MFA challenge page; only when status&#x3D;mfa_required. | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::SubmitLoginJsonResponse.new(
  status: null,
  challenge_url: null
)
```

