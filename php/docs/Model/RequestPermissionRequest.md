# # RequestPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**taskId** | **string** | Required. Task context. | [optional]
**authorizationDetails** | **object** | Required. RFC 9396 authorization_details object (needs a type). | [optional]
**justification** | **string** | Optional human-readable justification. | [optional]
**requestedTtl** | **int** | Optional TTL in seconds (default 600). | [optional]
**callbackUrl** | **string** | Optional HITL notification webhook. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
