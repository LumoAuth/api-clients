# LumoAuth.ApiClient.Model.AbacPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **int** |  | [optional] 
**Name** | **string** |  | [optional] 
**Slug** | **string** |  | [optional] 
**Description** | **string** |  | [optional] 
**ResourceType** | **string** |  | [optional] 
**Action** | **string** | One action, several separated by commas (read, write), or * for every action. The policy decides a request for each action that it names; spaces around the commas are ignored and actions compare case-sensitively. | [optional] 
**Effect** | **string** |  | [optional] 
**Priority** | **int** |  | [optional] 
**Conditions** | **Dictionary&lt;string, Object&gt;** |  | [optional] 
**IsActive** | **bool** |  | [optional] 
**IsSystem** | **bool** |  | [optional] 
**BuiltIn** | **bool** | True for a policy that LumoAuth provides to every organization. It can be read, but not changed, switched or deleted (403). | [optional] 
**CreatedAt** | **DateTime** |  | [optional] 
**UpdatedAt** | **DateTime?** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

