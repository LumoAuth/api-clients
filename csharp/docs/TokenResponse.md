# LumoAuth.ApiClient.Model.TokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessToken** | **string** |  | 
**TokenType** | **string** | DPoP for sender-constrained tokens; N_A for ID-JAG and Txn-Token exchanges (RFC 8693 §2.2.1). | 
**ExpiresIn** | **int** |  | 
**Scope** | **string** | Space-separated granted scopes. Omitted for Txn-Token and for ID-JAG when no scopes were granted. | [optional] 
**RefreshToken** | **string** | Only when the client is registered for the refresh_token grant. | [optional] 
**IdToken** | **string** | OpenID Connect ID Token (JWT) when the openid scope was granted. | [optional] 
**IssuedTokenType** | **string** | Token exchange only (RFC 8693). | [optional] 
**AuthorizationDetails** | **List&lt;Dictionary&lt;string, Object&gt;&gt;** | Agent-initiated CIBA only: the approved RFC 9396 authorization details. | [optional] 
**JitRequestId** | **string** | Agent-initiated CIBA only. | [optional] 
**TaskId** | **string** | Agent-initiated CIBA only. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

