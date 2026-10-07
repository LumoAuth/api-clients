# User

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | 
**email** | **String** |  | 
**username** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**givenName** | **String** |  | [optional] 
**familyName** | **String** |  | [optional] 
**picture** | **String** |  | [optional] 
**emailVerified** | **Bool** |  | 
**phoneNumber** | **String** |  | [optional] 
**phoneNumberVerified** | **Bool** |  | [optional] 
**isActive** | **Bool** |  | 
**blocked** | **Bool** |  | 
**mfaEnabled** | **Bool** |  | 
**isAdmin** | **Bool** |  | 
**createdAt** | **Date** |  | 
**lastLoginAt** | **Date** |  | [optional] 
**loginCount** | **Int** |  | 
**roles** | [RoleRef] | Detailed (single-user) responses only | [optional] 
**groups** | [GroupRef] | Detailed responses only | [optional] 
**locale** | **String** | Detailed responses only | [optional] 
**zoneinfo** | **String** | Detailed responses only | [optional] 
**updatedAt** | **Date** | Detailed responses only | [optional] 
**blockedAt** | **Date** | Detailed responses only | [optional] 
**isJitProvisioned** | **Bool** | Detailed responses only | [optional] 
**jitProvisionedBy** | **String** | Detailed responses only | [optional] 
**socialProvider** | **String** | Detailed responses only | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


