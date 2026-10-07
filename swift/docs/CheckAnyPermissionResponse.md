# CheckAnyPermissionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **Bool** |  | [optional] 
**permissions** | **[String]** | The permissions that were checked | [optional] 
**subjectType** | **String** |  | [optional] 
**subjectId** | **String** |  | [optional] 
**userId** | **UUID** | Only present when the subject is a user (legacy alias of subject_id) | [optional] 
**context** | **[String: AnyCodable]** | The request context echoed back | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


