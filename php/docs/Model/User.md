# # User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **string** |  |
**email** | **string** |  |
**username** | **string** |  | [optional]
**name** | **string** |  | [optional]
**givenName** | **string** |  | [optional]
**familyName** | **string** |  | [optional]
**picture** | **string** |  | [optional]
**emailVerified** | **bool** |  |
**phoneNumber** | **string** |  | [optional]
**phoneNumberVerified** | **bool** |  | [optional]
**isActive** | **bool** |  |
**blocked** | **bool** |  |
**mfaEnabled** | **bool** |  |
**isAdmin** | **bool** |  |
**createdAt** | **\DateTime** |  |
**lastLoginAt** | **\DateTime** |  | [optional]
**loginCount** | **int** |  |
**roles** | [**\LumoAuth\ApiClient\Model\RoleRef[]**](RoleRef.md) | Detailed (single-user) responses only | [optional]
**groups** | [**\LumoAuth\ApiClient\Model\GroupRef[]**](GroupRef.md) | Detailed responses only | [optional]
**locale** | **string** | Detailed responses only | [optional]
**zoneinfo** | **string** | Detailed responses only | [optional]
**updatedAt** | **\DateTime** | Detailed responses only | [optional]
**blockedAt** | **\DateTime** | Detailed responses only | [optional]
**isJitProvisioned** | **bool** | Detailed responses only | [optional]
**jitProvisionedBy** | **string** | Detailed responses only | [optional]
**socialProvider** | **string** | Detailed responses only | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
