# # AdminSocialProvidersCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **string** | The provider key, for example google, microsoft, github or apple. |
**clientId** | **string** |  | [optional]
**clientSecret** | **string** |  | [optional]
**displayName** | **string** |  | [optional]
**enabled** | **bool** |  | [optional]
**enableForOAuthApps** | **bool** |  | [optional]
**requestedScopes** | **string[]** |  | [optional]
**claimMapping** | **array<string,mixed>** |  | [optional]
**providerConfig** | **array<string,mixed>** |  | [optional]
**defaultRoles** | **string[]** | Role slugs; roles that open the portal are refused. | [optional]
**brandColor** | **string** |  | [optional]
**iconUrl** | **string** |  | [optional]
**authorizationUrl** | **string** |  | [optional]
**tokenUrl** | **string** |  | [optional]
**userInfoUrl** | **string** |  | [optional]
**hostedDomain** | **string** | Google: Workspace domain. | [optional]
**tenantId** | **string** | Microsoft: Entra tenant. | [optional]
**issuerUrl** | **string** |  | [optional]
**teamId** | **string** | Apple. | [optional]
**keyId** | **string** | Apple. | [optional]
**privateKey** | **string** | Apple: the .p8 key. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
