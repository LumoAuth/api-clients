# # TokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **string** |  |
**tokenType** | **string** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). |
**expiresIn** | **int** |  |
**scope** | **string** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional]
**refreshToken** | **string** | Only when the client is registered for the refresh_token grant. | [optional]
**idToken** | **string** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional]
**issuedTokenType** | **string** | Token exchange only (RFC 8693). | [optional]
**authorizationDetails** | **array<string,mixed>[]** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional]
**jitRequestId** | **string** | Agent-initiated CIBA only. | [optional]
**taskId** | **string** | Agent-initiated CIBA only. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
