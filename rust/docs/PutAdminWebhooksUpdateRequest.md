# PutAdminWebhooksUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | Option<**String**> | A new URL for a webhook that has a signing secret needs rotateSecret: true. | [optional]
**events** | Option<**Vec<String>**> |  | [optional]
**is_active** | Option<**bool**> | Also accepted as active or enabled. | [optional]
**r#type** | Option<**String**> |  | [optional]
**configuration** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**rotate_secret** | Option<**bool**> | Issue a new signing secret (returned once). | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


