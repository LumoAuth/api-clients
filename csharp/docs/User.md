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
**Staff** | **bool** | Staff account: one of the organization&#39;s own users, not a person of a customer organization. Only staff accounts pass the \&quot;Organization users only\&quot; setting of applications and agents. Switched off when the account joins a customer organization; the end of the membership does not switch it on again. Set it with PUT or PATCH /users/{userId}. | [optional] 
**Blocked** | **bool** |  | 
**Deleted** | **bool** | Soft-deleted by inbound SCIM. Left out of the list unless deleted&#x3D;true is asked; POST /users/{userId}/restore brings the user back. | [optional] 
**DeletedAt** | **DateTime?** |  | [optional] 
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

