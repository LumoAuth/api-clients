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
**staff** | **bool** | Staff account: one of the organization&#39;s own users, not a person of a customer organization. Only staff accounts pass the \&quot;Organization users only\&quot; setting of applications and agents. Switched off when the account joins a customer organization; the end of the membership does not switch it on again. Set it with PUT or PATCH /users/{userId}. | [optional]
**blocked** | **bool** |  |
**deleted** | **bool** | Soft-deleted by inbound SCIM. Left out of the list unless deleted&#x3D;true is asked; POST /users/{userId}/restore brings the user back. | [optional]
**deletedAt** | **\DateTime** |  | [optional]
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
