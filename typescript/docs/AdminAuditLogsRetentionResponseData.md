# AdminAuditLogsRetentionResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retentionDays** | **number** | Effective retention, capped by the plan limit | [optional] [default to undefined]
**autoDelete** | **boolean** |  | [optional] [default to undefined]
**planLimitDays** | **number** | Plan cap; null when unlimited or billing enforcement is off | [optional] [default to undefined]

## Example

```typescript
import { AdminAuditLogsRetentionResponseData } from '@lumoauth/api-client';

const instance: AdminAuditLogsRetentionResponseData = {
    retentionDays,
    autoDelete,
    planLimitDays,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
