# PutAdminAuditLogsRetentionUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retentionDays** | **number** | Days to keep audit entries: at least the shorter of 90 days and the plan window, at most the plan window. | [default to undefined]

## Example

```typescript
import { PutAdminAuditLogsRetentionUpdateRequest } from '@lumoauth/api-client';

const instance: PutAdminAuditLogsRetentionUpdateRequest = {
    retentionDays,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
