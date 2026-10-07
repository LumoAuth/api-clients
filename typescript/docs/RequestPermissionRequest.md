# RequestPermissionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**task_id** | **string** | Required. Task context. | [optional] [default to undefined]
**authorization_details** | **object** | Required. RFC 9396 authorization_details object (needs a type). | [optional] [default to undefined]
**justification** | **string** | Optional human-readable justification. | [optional] [default to undefined]
**requested_ttl** | **number** | Optional TTL in seconds (default 600). | [optional] [default to undefined]
**callback_url** | **string** | Optional HITL notification webhook. | [optional] [default to undefined]

## Example

```typescript
import { RequestPermissionRequest } from '@lumoauth/api-client';

const instance: RequestPermissionRequest = {
    task_id,
    authorization_details,
    justification,
    requested_ttl,
    callback_url,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
