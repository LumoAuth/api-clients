# MfaChallenge

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> |  | [optional]
**purpose** | Option<**String**> |  | [optional]
**status** | Option<**String**> |  | [optional]
**authenticator** | Option<[**models::MfaChallengeAuthenticator**](MfaChallenge_authenticator.md)> |  | [optional]
**alternatives** | Option<[**Vec<models::MfaChallengeAlternativesInner>**](MfaChallenge_alternatives_inner.md)> |  | [optional]
**expires_at** | Option<**String**> |  | [optional]
**attempts_remaining** | Option<**i32**> |  | [optional]
**delivery** | Option<**String**> |  | [optional]
**number_match** | Option<**i32**> | Two-digit number to show the user when delivery is push_sent | [optional]
**public_key** | Option<[**serde_json::Value**](.md)> | WebAuthn PublicKeyCredentialRequestOptions when delivery is webauthn | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


