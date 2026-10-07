# TokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** |  | 
**tokenType** | **String** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | 
**expiresIn** | **Int** |  | 
**scope** | **String** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] 
**refreshToken** | **String** | Only when the client is registered for the refresh_token grant. | [optional] 
**idToken** | **String** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] 
**issuedTokenType** | **String** | Token exchange only (RFC 8693). | [optional] 
**authorizationDetails** | [[String: AnyCodable]] | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] 
**jitRequestId** | **String** | Agent-initiated CIBA only. | [optional] 
**taskId** | **String** | Agent-initiated CIBA only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


