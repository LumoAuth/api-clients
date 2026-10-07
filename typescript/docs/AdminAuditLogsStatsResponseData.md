# AdminAuditLogsStatsResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **number** |  | [optional] [default to undefined]
**period** | [**AdminAuditLogsStatsResponseDataPeriod**](AdminAuditLogsStatsResponseDataPeriod.md) |  | [optional] [default to undefined]
**byEventType** | **{ [key: string]: number; }** | Top 10 event types by count | [optional] [default to undefined]
**byAction** | **{ [key: string]: number; }** |  | [optional] [default to undefined]
**bySeverity** | **{ [key: string]: number; }** |  | [optional] [default to undefined]

## Example

```typescript
import { AdminAuditLogsStatsResponseData } from '@lumoauth/api-client';

const instance: AdminAuditLogsStatsResponseData = {
    total,
    period,
    byEventType,
    byAction,
    bySeverity,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
