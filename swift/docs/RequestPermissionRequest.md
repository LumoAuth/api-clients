# RequestPermissionRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **String** | Required. Task context. | [optional] 
**authorizationDetails** | **AnyCodable** | Required. RFC 9396 authorization_details object (needs a type). | [optional] 
**justification** | **String** | Optional human-readable justification. | [optional] 
**requestedTtl** | **Int** | Optional TTL in seconds (default 600). | [optional] 
**callbackUrl** | **String** | Optional HITL notification webhook. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


