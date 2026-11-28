# AdminOrganizationsCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | At most 100 characters. | 
**slug** | Option<**String**> | Optional; derived from the name when left out. Lowercase letters, digits and hyphens. | [optional]
**display_name** | Option<**String**> | At most 255 characters. | [optional]
**description** | Option<**String**> |  | [optional]
**logo_url** | Option<**String**> | Absolute https URL. | [optional]
**metadata** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**is_active** | Option<**bool**> |  | [optional][default to true]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


