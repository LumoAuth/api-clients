# LumoAuthApiClient::MfaChallenge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **purpose** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **authenticator** | [**MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional] |
| **alternatives** | [**Array&lt;MfaChallengeAlternativesInner&gt;**](MfaChallengeAlternativesInner.md) |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **attempts_remaining** | **Integer** |  | [optional] |
| **delivery** | **String** |  | [optional] |
| **number_match** | **Integer** | Two-digit number to show the user when delivery is push_sent | [optional] |
| **public_key** | **Object** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::MfaChallenge.new(
  id: null,
  purpose: null,
  status: null,
  authenticator: null,
  alternatives: null,
  expires_at: null,
  attempts_remaining: null,
  delivery: null,
  number_match: null,
  public_key: null
)
```

