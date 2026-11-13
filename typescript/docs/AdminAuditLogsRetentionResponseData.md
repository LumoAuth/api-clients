# AdminAuditLogsRetentionResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retentionDays** | **number** | The organization\&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] [default to undefined]
**autoDelete** | **boolean** | false switches the organization\&#39;s own period off; the plan\&#39;s period still applies | [optional] [default to undefined]
**planLimitDays** | **number** | The plan\&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] [default to undefined]
**effectiveRetentionDays** | **number** | How long entries are kept now; null when nothing is deleted | [optional] [default to undefined]
**minRetentionDays** | **number** |  | [optional] [default to undefined]
**maxRetentionDays** | **number** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminAuditLogsRetentionResponseData } from '@lumoauth/api-client';

const instance: AdminAuditLogsRetentionResponseData = {
    retentionDays,
    autoDelete,
    planLimitDays,
    effectiveRetentionDays,
    minRetentionDays,
    maxRetentionDays,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
