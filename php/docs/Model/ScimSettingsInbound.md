# # ScimSettingsInbound

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enabled** | **bool** |  | [optional]
**bearerToken** | **string** | Write-only. Always null in responses: the token is stored as bearer_token_hash. | [optional]
**bearerTokenHash** | [**\LumoAuth\ApiClient\Model\RedactedSecret**](RedactedSecret.md) |  | [optional]
**bearerTokenPreview** | **string** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. | [optional]
**tokenCreatedAt** | **string** |  | [optional]
**allowUserCreation** | **bool** |  | [optional]
**allowUserUpdates** | **bool** |  | [optional]
**allowUserDeletion** | **bool** |  | [optional]
**allowGroupOperations** | **bool** |  | [optional]
**protectedAttributes** | [**\LumoAuth\ApiClient\Model\ScimSettingsInboundProtectedAttributes**](ScimSettingsInboundProtectedAttributes.md) |  | [optional]
**attributeMapping** | **array<string,string>** | SCIM attribute &#x3D;&gt; user field. | [optional]
**autoActivateUsers** | **bool** |  | [optional]
**deprovisioningAction** | **string** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
