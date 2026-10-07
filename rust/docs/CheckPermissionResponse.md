# CheckPermissionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | Option<**bool**> |  | [optional]
**permission** | Option<**String**> |  | [optional]
**subject_type** | Option<**String**> |  | [optional]
**subject_id** | Option<**String**> |  | [optional]
**user_id** | Option<[**uuid::Uuid**](uuid::Uuid.md)> | Only present when the subject is a user (legacy alias of subject_id) | [optional]
**context** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | The request context echoed back | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


