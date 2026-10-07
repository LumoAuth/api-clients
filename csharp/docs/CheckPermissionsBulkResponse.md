# LumoAuth.ApiClient.Model.CheckPermissionsBulkResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Results** | **Dictionary&lt;string, bool&gt;** | Map of permission slug to decision | [optional] 
**SubjectType** | **string** |  | [optional] 
**SubjectId** | **string** |  | [optional] 
**UserId** | **Guid** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**Context** | **Dictionary&lt;string, Object&gt;** | The request context echoed back | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

