# AdminAgentsReportUsageRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokens** | **number** | Model tokens used since the last report (input and output together). | [optional] [default to undefined]
**cost_usd** | **number** | Cost in USD since the last report. | [optional] [default to undefined]

## Example

```typescript
import { AdminAgentsReportUsageRequest } from '@lumoauth/api-client';

const instance: AdminAgentsReportUsageRequest = {
    tokens,
    cost_usd,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
