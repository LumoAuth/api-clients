# MfaChallenge

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [optional] 
**purpose** | **String** |  | [optional] 
**status** | **String** |  | [optional] 
**authenticator** | [**MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional] 
**alternatives** | [MfaChallengeAlternativesInner] |  | [optional] 
**expiresAt** | **Date** |  | [optional] 
**attemptsRemaining** | **Int** |  | [optional] 
**delivery** | **String** |  | [optional] 
**numberMatch** | **Int** | Two-digit number to show the user when delivery is push_sent | [optional] 
**publicKey** | **AnyCodable** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


