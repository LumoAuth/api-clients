# LumoAuth.ApiClient.Model.CreateUserRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Email** | **string** |  | 
**Password** | **string** | Optional; must meet the organization&#39;s password policy. | [optional] 
**Username** | **string** |  | [optional] 
**Name** | **string** |  | [optional] 
**GivenName** | **string** |  | [optional] 
**FamilyName** | **string** |  | [optional] 
**PhoneNumber** | **string** |  | [optional] 
**EmailVerified** | **bool** |  | [optional] [default to false]
**IsActive** | **bool** |  | [optional] [default to true]
**Metadata** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**Roles** | **List&lt;string&gt;** | Role slugs or ids of this organization. | [optional] 
**Groups** | **List&lt;string&gt;** | Group slugs or ids of this organization. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

