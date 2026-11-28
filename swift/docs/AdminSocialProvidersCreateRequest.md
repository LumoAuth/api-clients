# AdminSocialProvidersCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **String** | The provider key, for example google, microsoft, github or apple. | 
**clientId** | **String** |  | [optional] 
**clientSecret** | **String** |  | [optional] 
**displayName** | **String** |  | [optional] 
**enabled** | **Bool** |  | [optional] 
**enableForOAuthApps** | **Bool** |  | [optional] 
**requestedScopes** | **[String]** |  | [optional] 
**claimMapping** | **[String: AnyCodable]** |  | [optional] 
**providerConfig** | **[String: AnyCodable]** |  | [optional] 
**defaultRoles** | **[String]** | Role slugs; roles that open the portal are refused. | [optional] 
**brandColor** | **String** |  | [optional] 
**iconUrl** | **String** |  | [optional] 
**authorizationUrl** | **String** |  | [optional] 
**tokenUrl** | **String** |  | [optional] 
**userInfoUrl** | **String** |  | [optional] 
**hostedDomain** | **String** | Google: Workspace domain. | [optional] 
**tenantId** | **String** | Microsoft: Entra tenant. | [optional] 
**issuerUrl** | **String** |  | [optional] 
**teamId** | **String** | Apple. | [optional] 
**keyId** | **String** | Apple. | [optional] 
**privateKey** | **String** | Apple: the .p8 key. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


