# LumoAuth.ApiClient.Model.CheckAnyPermissionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Allowed** | **bool** |  | [optional] 
**Permissions** | **List&lt;string&gt;** | The permissions that were checked | [optional] 
**SubjectType** | **string** |  | [optional] 
**SubjectId** | **string** |  | [optional] 
**UserId** | **Guid** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**Context** | **Dictionary&lt;string, Object&gt;** | The request context echoed back | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

