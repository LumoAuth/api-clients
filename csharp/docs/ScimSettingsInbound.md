# LumoAuth.ApiClient.Model.ScimSettingsInbound
Inbound SCIM server settings (entity defaults merged with the stored values).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **bool** |  | [optional] 
**BearerToken** | **string** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional] 
**BearerTokenHash** | [**RedactedSecret**](RedactedSecret.md) |  | [optional] 
**BearerTokenPreview** | **string** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional] 
**TokenCreatedAt** | **string** |  | [optional] 
**AllowUserCreation** | **bool** |  | [optional] 
**AllowUserUpdates** | **bool** |  | [optional] 
**AllowUserDeletion** | **bool** |  | [optional] 
**AllowGroupOperations** | **bool** |  | [optional] 
**ProtectedAttributes** | [**ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional] 
**AttributeMapping** | **Dictionary&lt;string, string&gt;** | SCIM attribute &#x3D;&gt; user field. | [optional] 
**AutoActivateUsers** | **bool** |  | [optional] 
**DeprovisioningAction** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

