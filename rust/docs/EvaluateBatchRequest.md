# EvaluateBatchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> | Default for every evaluation. | [optional]
**action** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**resource** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**context** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**evaluations** | [**Vec<std::collections::HashMap<String, serde_json::Value>>**](std::collections::HashMap.md) | Evaluation requests; each member overrides the defaults. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


