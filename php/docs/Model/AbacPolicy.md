# # AbacPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional]
**name** | **string** |  | [optional]
**slug** | **string** |  | [optional]
**description** | **string** |  | [optional]
**resourceType** | **string** |  | [optional]
**action** | **string** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional]
**effect** | **string** |  | [optional]
**priority** | **int** |  | [optional]
**conditions** | **array<string,mixed>** |  | [optional]
**isActive** | **bool** |  | [optional]
**isSystem** | **bool** |  | [optional]
**builtIn** | **bool** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional]
**createdAt** | **\DateTime** |  | [optional]
**updatedAt** | **\DateTime** |  | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
