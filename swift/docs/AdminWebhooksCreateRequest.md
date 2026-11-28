# AdminWebhooksCreateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Public https URL. | 
**events** | **[String]** | Event names from the catalogue. | 
**isActive** | **Bool** | Also accepted as active or enabled. | [optional] [default to true]
**type** | **String** | custom (default), slack, discord or teams. | [optional] 
**configuration** | **[String: AnyCodable]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


