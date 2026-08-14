# LumoAuth.ApiClient.Model.RequestPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskId** | **string** | Required. Task context. | [optional] 
**AuthorizationDetails** | **Object** | Required. RFC 9396 authorization_details object (needs a type). | [optional] 
**Justification** | **string** | Optional human-readable justification. | [optional] 
**RequestedTtl** | **int** | Optional TTL in seconds (default 600). | [optional] 
**CallbackUrl** | **string** | Optional HITL notification webhook. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

