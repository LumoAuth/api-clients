

# AdminSocialProvidersCreateRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**provider** | **String** | The provider key, for example google, microsoft, github or apple. |  |
|**clientId** | **String** |  |  [optional] |
|**clientSecret** | **String** |  |  [optional] |
|**displayName** | **String** |  |  [optional] |
|**enabled** | **Boolean** |  |  [optional] |
|**enableForOAuthApps** | **Boolean** |  |  [optional] |
|**requestedScopes** | **List&lt;String&gt;** |  |  [optional] |
|**claimMapping** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**providerConfig** | **Map&lt;String, Object&gt;** |  |  [optional] |
|**defaultRoles** | **List&lt;String&gt;** | Role slugs; roles that open the portal are refused. |  [optional] |
|**brandColor** | **String** |  |  [optional] |
|**iconUrl** | **URI** |  |  [optional] |
|**authorizationUrl** | **URI** |  |  [optional] |
|**tokenUrl** | **URI** |  |  [optional] |
|**userInfoUrl** | **URI** |  |  [optional] |
|**hostedDomain** | **String** | Google: Workspace domain. |  [optional] |
|**tenantId** | **String** | Microsoft: Entra tenant. |  [optional] |
|**issuerUrl** | **URI** |  |  [optional] |
|**teamId** | **String** | Apple. |  [optional] |
|**keyId** | **String** | Apple. |  [optional] |
|**privateKey** | **String** | Apple: the .p8 key. |  [optional] |



