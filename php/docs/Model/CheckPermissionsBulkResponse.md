# # CheckPermissionsBulkResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | **array<string,bool>** | Map of permission slug to decision | [optional]
**subjectType** | **string** |  | [optional]
**subjectId** | **string** |  | [optional]
**userId** | **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional]
**context** | **array<string,mixed>** | The request context echoed back | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
