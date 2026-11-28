# AbacPoliciesCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**slug** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**resource_type** | **String** |  | 
**action** | **String** | One action, a comma-separated list of actions, or *. | 
**effect** | **String** |  | 
**priority** | Option<**i32**> |  | [optional]
**conditions** | [**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md) | A condition group: {\"operator\": \"AND\"|\"OR\", \"conditions\": [...]}. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


