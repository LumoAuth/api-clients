# SocialLoginProvider

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**provider** | **String** |  | 
**displayName** | **String** |  | 
**enabled** | **Bool** |  | 
**brandColor** | **String** |  | [optional] 
**iconUrl** | **String** |  | [optional] 
**jitProvisioningEnabled** | **Bool** |  | 
**clientId** | **String** | Detailed responses only | [optional] 
**callbackUrl** | **String** | Detailed responses only | [optional] 
**requestedScopes** | **[String]** | Detailed responses only | [optional] 
**customClaims** | **[String: AnyCodable]** | Deprecated. Always null. The field is accepted on create and update and ignored: no sign-in sends extra claims to a provider. Ask for more profile data with requestedScopes. | [optional] 
**claimMapping** | **[String: AnyCodable]** | Detailed responses only | [optional] 
**providerConfig** | **[String: AnyCodable]** | Detailed responses only; secrets redacted | [optional] 
**authorizationUrl** | **String** | Detailed responses only | [optional] 
**tokenUrl** | **String** | Detailed responses only | [optional] 
**userInfoUrl** | **String** | Detailed responses only | [optional] 
**defaultRoles** | [RoleRef] | Detailed responses only | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


