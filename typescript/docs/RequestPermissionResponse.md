# RequestPermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**risk_level** | **string** |  | [optional] [default to undefined]
**task_id** | **string** |  | [optional] [default to undefined]
**token_url** | **string** | Present when approved. | [optional] [default to undefined]
**granted_ttl** | **number** | Present when approved. | [optional] [default to undefined]
**status_url** | **string** | Present when pending. | [optional] [default to undefined]
**expires_at** | **string** | Present when pending. | [optional] [default to undefined]
**message** | **string** | Present when pending. | [optional] [default to undefined]

## Example

```typescript
import { RequestPermissionResponse } from '@lumoauth/api-client';

const instance: RequestPermissionResponse = {
    request_id,
    status,
    risk_level,
    task_id,
    token_url,
    granted_ttl,
    status_url,
    expires_at,
    message,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
