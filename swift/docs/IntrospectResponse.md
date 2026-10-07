# IntrospectResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **Bool** |  | 
**tokenType** | **String** | Bearer for access tokens; refresh_token for refresh tokens. | [optional] 
**scope** | **String** | Space-separated scopes. | [optional] 
**clientId** | **String** |  | [optional] 
**sub** | **String** | User id, or client_… / agent_… for non-user subjects. | [optional] 
**username** | **String** | The user&#39;s email (user-bound tokens only). | [optional] 
**exp** | **Int** | Expiry, Unix seconds. | [optional] 
**iat** | **Int** | Issued-at, Unix seconds. | [optional] 
**nbf** | **Int** | Not-before, Unix seconds (JWT tokens only). | [optional] 
**iss** | **String** | Issuer identifier of this organization. | [optional] 
**aud** | [**IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional] 
**jti** | **String** | JWT id (JWT tokens only). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


