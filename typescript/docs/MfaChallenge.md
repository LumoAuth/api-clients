# MfaChallenge


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional] [default to undefined]
**purpose** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**authenticator** | [**MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional] [default to undefined]
**alternatives** | [**Array&lt;MfaChallengeAlternativesInner&gt;**](MfaChallengeAlternativesInner.md) |  | [optional] [default to undefined]
**expires_at** | **string** |  | [optional] [default to undefined]
**attempts_remaining** | **number** |  | [optional] [default to undefined]
**delivery** | **string** |  | [optional] [default to undefined]
**number_match** | **number** | Two-digit number to show the user when delivery is push_sent | [optional] [default to undefined]
**public_key** | **object** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional] [default to undefined]

## Example

```typescript
import { MfaChallenge } from '@lumoauth/api-client';

const instance: MfaChallenge = {
    id,
    purpose,
    status,
    authenticator,
    alternatives,
    expires_at,
    attempts_remaining,
    delivery,
    number_match,
    public_key,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
