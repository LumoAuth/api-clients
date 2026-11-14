# AbacPolicy

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | [optional] 
**name** | **String** |  | [optional] 
**slug** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**resourceType** | **String** |  | [optional] 
**action** | **String** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional] 
**effect** | **String** |  | [optional] 
**priority** | **Int** |  | [optional] 
**conditions** | **[String: AnyCodable]** |  | [optional] 
**isActive** | **Bool** |  | [optional] 
**isSystem** | **Bool** |  | [optional] 
**builtIn** | **Bool** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional] 
**createdAt** | **Date** |  | [optional] 
**updatedAt** | **Date** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


