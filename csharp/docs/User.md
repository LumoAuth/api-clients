# LumoAuth.ApiClient.Model.User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Guid** |  | 
**Email** | **string** |  | 
**Username** | **string** |  | [optional] 
**Name** | **string** |  | [optional] 
**GivenName** | **string** |  | [optional] 
**FamilyName** | **string** |  | [optional] 
**Picture** | **string** |  | [optional] 
**EmailVerified** | **bool** |  | 
**PhoneNumber** | **string** |  | [optional] 
**PhoneNumberVerified** | **bool** |  | [optional] 
**IsActive** | **bool** |  | 
**Blocked** | **bool** |  | 
**MfaEnabled** | **bool** |  | 
**IsAdmin** | **bool** |  | 
**CreatedAt** | **DateTime** |  | 
**LastLoginAt** | **DateTime?** |  | [optional] 
**LoginCount** | **int** |  | 
**Roles** | [**List&lt;RoleRef&gt;**](RoleRef.md) | Detailed (single-user) responses only | [optional] 
**Groups** | [**List&lt;GroupRef&gt;**](GroupRef.md) | Detailed responses only | [optional] 
**Locale** | **string** | Detailed responses only | [optional] 
**Zoneinfo** | **string** | Detailed responses only | [optional] 
**UpdatedAt** | **DateTime?** | Detailed responses only | [optional] 
**BlockedAt** | **DateTime?** | Detailed responses only | [optional] 
**IsJitProvisioned** | **bool** | Detailed responses only | [optional] 
**JitProvisionedBy** | **string** | Detailed responses only | [optional] 
**SocialProvider** | **string** | Detailed responses only | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

