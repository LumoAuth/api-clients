# # MfaChallenge

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  | [optional]
**purpose** | **string** |  | [optional]
**status** | **string** |  | [optional]
**authenticator** | [**\LumoAuth\ApiClient\Model\MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional]
**alternatives** | [**\LumoAuth\ApiClient\Model\MfaChallengeAlternativesInner[]**](MfaChallengeAlternativesInner.md) |  | [optional]
**expiresAt** | **\DateTime** |  | [optional]
**attemptsRemaining** | **int** |  | [optional]
**delivery** | **string** |  | [optional]
**numberMatch** | **int** | Two-digit number to show the user when delivery is push_sent | [optional]
**publicKey** | **object** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
