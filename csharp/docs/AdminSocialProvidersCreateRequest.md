# LumoAuth.ApiClient.Model.AdminSocialProvidersCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Provider** | **string** | The provider key, for example google, microsoft, github or apple. | 
**ClientId** | **string** |  | [optional] 
**ClientSecret** | **string** |  | [optional] 
**DisplayName** | **string** |  | [optional] 
**Enabled** | **bool** |  | [optional] 
**EnableForOAuthApps** | **bool** |  | [optional] 
**RequestedScopes** | **List&lt;string&gt;** |  | [optional] 
**ClaimMapping** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**ProviderConfig** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**DefaultRoles** | **List&lt;string&gt;** | Role slugs; roles that open the portal are refused. | [optional] 
**BrandColor** | **string** |  | [optional] 
**IconUrl** | **string** |  | [optional] 
**AuthorizationUrl** | **string** |  | [optional] 
**TokenUrl** | **string** |  | [optional] 
**UserInfoUrl** | **string** |  | [optional] 
**HostedDomain** | **string** | Google: Workspace domain. | [optional] 
**TenantId** | **string** | Microsoft: Entra tenant. | [optional] 
**IssuerUrl** | **string** |  | [optional] 
**TeamId** | **string** | Apple. | [optional] 
**KeyId** | **string** | Apple. | [optional] 
**PrivateKey** | **string** | Apple: the .p8 key. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

