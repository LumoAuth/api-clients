# LumoAuth.ApiClient.Model.SocialLoginProvider

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** |  | 
**Provider** | **string** |  | 
**DisplayName** | **string** |  | 
**Enabled** | **bool** |  | 
**BrandColor** | **string** |  | [optional] 
**IconUrl** | **string** |  | [optional] 
**JitProvisioningEnabled** | **bool** |  | 
**ClientId** | **string** | Detailed responses only | [optional] 
**CallbackUrl** | **string** | Detailed responses only | [optional] 
**RequestedScopes** | **List&lt;string&gt;** | Detailed responses only | [optional] 
**CustomClaims** | **Dictionary&lt;string, Object&gt;** | Deprecated. Always null. The field is accepted on create and update and ignored: no sign-in sends extra claims to a provider. Ask for more profile data with requestedScopes. | [optional] 
**ClaimMapping** | **Dictionary&lt;string, Object&gt;** | Detailed responses only | [optional] 
**ProviderConfig** | **Dictionary&lt;string, Object&gt;** | Detailed responses only; secrets redacted | [optional] 
**AuthorizationUrl** | **string** | Detailed responses only | [optional] 
**TokenUrl** | **string** | Detailed responses only | [optional] 
**UserInfoUrl** | **string** | Detailed responses only | [optional] 
**DefaultRoles** | [**List&lt;RoleRef&gt;**](RoleRef.md) | Detailed responses only | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

