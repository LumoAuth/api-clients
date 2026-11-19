# AbacPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | Option<**i32**> |  | [optional]
**name** | Option<**String**> |  | [optional]
**slug** | Option<**String**> |  | [optional]
**description** | Option<**String**> |  | [optional]
**resource_type** | Option<**String**> |  | [optional]
**action** | Option<**String**> | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional]
**effect** | Option<**String**> |  | [optional]
**priority** | Option<**i32**> |  | [optional]
**conditions** | Option<[**std::collections::HashMap<String, serde_json::Value>**](serde_json::Value.md)> |  | [optional]
**is_active** | Option<**bool**> |  | [optional]
**is_system** | Option<**bool**> |  | [optional]
**built_in** | Option<**bool**> | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional]
**created_at** | Option<**String**> |  | [optional]
**updated_at** | Option<**String**> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


