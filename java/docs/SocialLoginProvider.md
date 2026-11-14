

# SocialLoginProvider


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **Integer** |  |  |
|**provider** | **String** |  |  |
|**displayName** | **String** |  |  |
|**enabled** | **Boolean** |  |  |
|**brandColor** | **String** |  |  [optional] |
|**iconUrl** | **String** |  |  [optional] |
|**jitProvisioningEnabled** | **Boolean** |  |  |
|**clientId** | **String** | Detailed responses only |  [optional] |
|**callbackUrl** | **String** | Detailed responses only |  [optional] |
|**requestedScopes** | **List&lt;String&gt;** | Detailed responses only |  [optional] |
|**customClaims** | **Map&lt;String, Object&gt;** | Deprecated. Always null. The field is accepted on create and update and ignored: no sign-in sends extra claims to a provider. Ask for more profile data with requestedScopes. |  [optional] |
|**claimMapping** | **Map&lt;String, Object&gt;** | Detailed responses only |  [optional] |
|**providerConfig** | **Map&lt;String, Object&gt;** | Detailed responses only; secrets redacted |  [optional] |
|**authorizationUrl** | **String** | Detailed responses only |  [optional] |
|**tokenUrl** | **String** | Detailed responses only |  [optional] |
|**userInfoUrl** | **String** | Detailed responses only |  [optional] |
|**defaultRoles** | [**List&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only |  [optional] |



