

# ScimSettingsInbound

Inbound SCIM server settings (entity defaults merged with the stored values).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**enabled** | **Boolean** |  |  [optional] |
|**bearerToken** | **String** | Write-only. Always null in responses: the token is stored as bearer_token_hash. |  [optional] |
|**bearerTokenHash** | [**RedactedSecret**](RedactedSecret.md) |  |  [optional] |
|**bearerTokenPreview** | **String** | Non-reversible fingerprint of the current token (lmk_... + 8 hex chars); present once a token was set. |  [optional] |
|**tokenCreatedAt** | **String** |  |  [optional] |
|**allowUserCreation** | **Boolean** |  |  [optional] |
|**allowUserUpdates** | **Boolean** |  |  [optional] |
|**allowUserDeletion** | **Boolean** |  |  [optional] |
|**allowGroupOperations** | **Boolean** |  |  [optional] |
|**protectedAttributes** | **ScimSettingsInboundProtectedAttributes** |  |  [optional] |
|**attributeMapping** | **Map&lt;String, String&gt;** | SCIM attribute &#x3D;&gt; user field. |  [optional] |
|**autoActivateUsers** | **Boolean** |  |  [optional] |
|**deprovisioningAction** | [**DeprovisioningActionEnum**](#DeprovisioningActionEnum) |  |  [optional] |



## Enum: DeprovisioningActionEnum

| Name | Value |
|---- | -----|
| SOFT_DELETE | &quot;soft_delete&quot; |
| DEACTIVATE | &quot;deactivate&quot; |
| HARD_DELETE | &quot;hard_delete&quot; |



