# # IntrospectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  |
**tokenType** | **string** | Bearer for access tokens; refresh_token for refresh tokens. | [optional]
**scope** | **string** | Space-separated scopes. | [optional]
**clientId** | **string** |  | [optional]
**sub** | **string** | User id, or client_… / agent_… for non-user subjects. | [optional]
**username** | **string** | The user&#39;s email (user-bound tokens only). | [optional]
**exp** | **int** | Expiry, Unix seconds. | [optional]
**iat** | **int** | Issued-at, Unix seconds. | [optional]
**nbf** | **int** | Not-before, Unix seconds (JWT tokens only). | [optional]
**iss** | **string** | Issuer identifier of this organization. | [optional]
**aud** | [**\LumoAuth\ApiClient\Model\IntrospectResponseAud**](IntrospectResponseAud.md) |  | [optional]
**jti** | **string** | JWT id (JWT tokens only). | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
