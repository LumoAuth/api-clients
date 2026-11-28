# # CreateUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **string** |  |
**password** | **string** | Optional; must meet the organization&#39;s password policy. | [optional]
**username** | **string** |  | [optional]
**name** | **string** |  | [optional]
**givenName** | **string** |  | [optional]
**familyName** | **string** |  | [optional]
**phoneNumber** | **string** |  | [optional]
**emailVerified** | **bool** |  | [optional] [default to false]
**isActive** | **bool** |  | [optional] [default to true]
**metadata** | **array<string,mixed>** |  | [optional]
**roles** | **string[]** | Role slugs or ids of this organization. | [optional]
**groups** | **string[]** | Group slugs or ids of this organization. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
