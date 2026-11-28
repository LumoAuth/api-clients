# AdminWebhooksCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **String** | Public https URL. | 
**events** | **Vec<String>** | Event names from the catalogue. | 
**is_active** | Option<**bool**> | Also accepted as active or enabled. | [optional][default to true]
**r#type** | Option<**String**> | custom (default), slack, discord or teams. | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


