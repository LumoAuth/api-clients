# ScimSettingsInbound

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **Bool** |  | [optional] 
**bearerToken** | **String** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] 
**bearerTokenHash** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**bearerTokenPreview** | **String** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] 
**tokenCreatedAt** | **String** |  | [optional] 
**allowUserCreation** | **Bool** |  | [optional] 
**allowUserUpdates** | **Bool** |  | [optional] 
**allowUserDeletion** | **Bool** |  | [optional] 
**allowGroupOperations** | **Bool** |  | [optional] 
**protectedAttributes** | [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] 
**attributeMapping** | **[String: String]** | SCIM attribute &#x3D;&gt; user field. | [optional] 
**autoActivateUsers** | **Bool** |  | [optional] 
**deprovisioningAction** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


