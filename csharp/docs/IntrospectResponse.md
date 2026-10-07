# LumoAuth.ApiClient.Model.IntrospectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Active** | **bool** |  | 
**TokenType** | **string** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] 
**Scope** | **string** | Space-separated scopes. | [optional] 
**ClientId** | **string** |  | [optional] 
**Sub** | **string** | User id, or client_… / agent_… for non-user subjects. | [optional] 
**Username** | **string** | The user&#39;s email (user-bound tokens only). | [optional] 
**Exp** | **int** | Expiry, Unix seconds. | [optional] 
**Iat** | **int** | Issued-at, Unix seconds. | [optional] 
**Nbf** | **int** | Not-before, Unix seconds (JWT tokens only). | [optional] 
**Iss** | **string** | Issuer identifier of this organization. | [optional] 
**Aud** | [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] 
**Jti** | **string** | JWT id (JWT tokens only). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

