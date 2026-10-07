# GetApprovalStatusResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**approval_token** | **string** |  | [optional] [default to undefined]
**status** | **string** |  | [optional] [default to undefined]
**task_id** | **string** |  | [optional] [default to undefined]
**impact** | **string** |  | [optional] [default to undefined]
**reason** | **string** |  | [optional] [default to undefined]
**responded_at** | **string** |  | [optional] [default to undefined]
**approved_by** | [**GetApprovalStatusResponseApprovedBy**](GetApprovalStatusResponseApprovedBy.md) |  | [optional] [default to undefined]

## Example

```typescript
import { GetApprovalStatusResponse } from '@lumoauth/api-client';

const instance: GetApprovalStatusResponse = {
    approval_token,
    status,
    task_id,
    impact,
    reason,
    responded_at,
    approved_by,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
