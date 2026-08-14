# RequestPermissionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | Option<**String**> | Required. Task context. | [optional]
**authorization_details** | Option<[**serde_json::Value**](.md)> | Required. RFC 9396 authorization_details object (needs a type). | [optional]
**justification** | Option<**String**> | Optional human-readable justification. | [optional]
**requested_ttl** | Option<**i32**> | Optional TTL in seconds (default 600). | [optional]
**callback_url** | Option<**String**> | Optional HITL notification webhook. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


