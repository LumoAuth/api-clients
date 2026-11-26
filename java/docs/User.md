

# User


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** |  |  |
|**email** | **String** |  |  |
|**username** | **String** |  |  [optional] |
|**name** | **String** |  |  [optional] |
|**givenName** | **String** |  |  [optional] |
|**familyName** | **String** |  |  [optional] |
|**picture** | **String** |  |  [optional] |
|**emailVerified** | **Boolean** |  |  |
|**phoneNumber** | **String** |  |  [optional] |
|**phoneNumberVerified** | **Boolean** |  |  [optional] |
|**isActive** | **Boolean** |  |  |
|**staff** | **Boolean** | Staff account: one of the organization&#39;s own users, not a person of a customer organization. Only staff accounts pass the \&quot;Organization users only\&quot; setting of applications and agents. Switched off when the account joins a customer organization; the end of the membership does not switch it on again. Set it with PUT or PATCH /users/{userId}. |  [optional] |
|**blocked** | **Boolean** |  |  |
|**deleted** | **Boolean** | Soft-deleted by inbound SCIM. Left out of the list unless deleted&#x3D;true is asked; POST /users/{userId}/restore brings the user back. |  [optional] |
|**deletedAt** | **OffsetDateTime** |  |  [optional] |
|**mfaEnabled** | **Boolean** |  |  |
|**isAdmin** | **Boolean** |  |  |
|**createdAt** | **OffsetDateTime** |  |  |
|**lastLoginAt** | **OffsetDateTime** |  |  [optional] |
|**loginCount** | **Integer** |  |  |
|**roles** | [**List&lt;RoleRef&gt;**](RoleRef.md) | Detailed (single-user) responses only |  [optional] |
|**groups** | [**List&lt;GroupRef&gt;**](GroupRef.md) | Detailed responses only |  [optional] |
|**locale** | **String** | Detailed responses only |  [optional] |
|**zoneinfo** | **String** | Detailed responses only |  [optional] |
|**updatedAt** | **OffsetDateTime** | Detailed responses only |  [optional] |
|**blockedAt** | **OffsetDateTime** | Detailed responses only |  [optional] |
|**isJitProvisioned** | **Boolean** | Detailed responses only |  [optional] |
|**jitProvisionedBy** | **String** | Detailed responses only |  [optional] |
|**socialProvider** | **String** | Detailed responses only |  [optional] |



