# LumoAuth.ApiClient.Model.AdminWebhooksCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Url** | **string** | Public https URL. | 
**Events** | **List&lt;string&gt;** | Event names from the catalogue. | 
**IsActive** | **bool** | Also accepted as active or enabled. | [optional] [default to true]
**Type** | **string** | custom (default), slack, discord or teams. | [optional] 
**VarConfiguration** | **Dictionary&lt;string, Object&gt;** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

