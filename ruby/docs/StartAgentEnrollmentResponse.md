# LumoAuthApiClient::StartAgentEnrollmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enrollment_code** | **String** | 43 characters, secret: only the poll needs it. |  |
| **user_code** | **String** |  |  |
| **verification_uri** | **String** |  |  |
| **verification_uri_complete** | **String** |  |  |
| **key_fingerprint** | **String** | First 16 characters of the RFC 7638 thumbprint of the key, in groups of four. |  |
| **expires_in** | **Integer** |  |  |
| **interval** | **Integer** |  |  |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::StartAgentEnrollmentResponse.new(
  enrollment_code: null,
  user_code: BCDF-GHJK,
  verification_uri: null,
  verification_uri_complete: null,
  key_fingerprint: Zx3a-91Kc-p0Qe-7tLm,
  expires_in: 900,
  interval: 5
)
```

