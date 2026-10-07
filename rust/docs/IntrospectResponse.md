# IntrospectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | 
**token_type** | Option<**String**> | Bearer for access tokens; refresh_token for refresh tokens. | [optional]
**scope** | Option<**String**> | Space-separated scopes. | [optional]
**client_id** | Option<**String**> |  | [optional]
**sub** | Option<**String**> | User id, or client_… / agent_… for non-user subjects. | [optional]
**username** | Option<**String**> | The user's email (user-bound tokens only). | [optional]
**exp** | Option<**i32**> | Expiry, Unix seconds. | [optional]
**iat** | Option<**i32**> | Issued-at, Unix seconds. | [optional]
**nbf** | Option<**i32**> | Not-before, Unix seconds (JWT tokens only). | [optional]
**iss** | Option<**String**> | Issuer identifier of this organization. | [optional]
**aud** | Option<[**models::IntrospectResponseAud**](IntrospectResponse_aud.md)> |  | [optional]
**jti** | Option<**String**> | JWT id (JWT tokens only). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


