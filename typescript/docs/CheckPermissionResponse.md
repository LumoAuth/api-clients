# CheckPermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed** | **boolean** |  | [optional] [default to undefined]
**permission** | **string** |  | [optional] [default to undefined]
**subject_type** | **string** |  | [optional] [default to undefined]
**subject_id** | **string** |  | [optional] [default to undefined]
**user_id** | **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional] [default to undefined]
**context** | **{ [key: string]: any; }** | The request context echoed back | [optional] [default to undefined]

## Example

```typescript
import { CheckPermissionResponse } from '@lumoauth/api-client';

const instance: CheckPermissionResponse = {
    allowed,
    permission,
    subject_type,
    subject_id,
    user_id,
    context,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
