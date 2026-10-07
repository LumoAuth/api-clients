# CheckPermissionsBulkResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | **{ [key: string]: boolean; }** | Map of permission slug to decision | [optional] [default to undefined]
**subject_type** | **string** |  | [optional] [default to undefined]
**subject_id** | **string** |  | [optional] [default to undefined]
**user_id** | **string** | Only present when the subject is a user (legacy alias of subject_id) | [optional] [default to undefined]
**context** | **{ [key: string]: any; }** | The request context echoed back | [optional] [default to undefined]

## Example

```typescript
import { CheckPermissionsBulkResponse } from '@lumoauth/api-client';

const instance: CheckPermissionsBulkResponse = {
    results,
    subject_type,
    subject_id,
    user_id,
    context,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
