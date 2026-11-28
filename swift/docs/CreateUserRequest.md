# CreateUserRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | 
**password** | **String** | Optional; must meet the organization&#39;s password policy. | [optional] 
**username** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**givenName** | **String** |  | [optional] 
**familyName** | **String** |  | [optional] 
**phoneNumber** | **String** |  | [optional] 
**emailVerified** | **Bool** |  | [optional] [default to false]
**isActive** | **Bool** |  | [optional] [default to true]
**metadata** | **[String: AnyCodable]** |  | [optional] 
**roles** | **[String]** | Role slugs or ids of this organization. | [optional] 
**groups** | **[String]** | Group slugs or ids of this organization. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


