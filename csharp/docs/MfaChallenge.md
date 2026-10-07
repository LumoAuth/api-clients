# LumoAuth.ApiClient.Model.MfaChallenge

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Guid** |  | [optional] 
**Purpose** | **string** |  | [optional] 
**Status** | **string** |  | [optional] 
**Authenticator** | [**MfaChallengeAuthenticator**](MfaChallengeAuthenticator.md) |  | [optional] 
**Alternatives** | [**List&lt;MfaChallengeAlternativesInner&gt;**](MfaChallengeAlternativesInner.md) |  | [optional] 
**ExpiresAt** | **DateTime** |  | [optional] 
**AttemptsRemaining** | **int** |  | [optional] 
**Delivery** | **string** |  | [optional] 
**NumberMatch** | **int** | Two-digit number to show the user when delivery is push_sent | [optional] 
**PublicKey** | **Object** | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

