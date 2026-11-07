# AdminAgentsReportUsageResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] [default to undefined]
**budget** | **{ [key: string]: any; }** | Same shape as budget_policy in UserInfo: limits, usage in the current windows, exhausted. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsReportUsageResponseData } from '@lumoauth/api-client';

const instance: AdminAgentsReportUsageResponseData = {
    recorded,
    budget,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
