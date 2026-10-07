# AdminAnalyticsLoginsResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily** | [**Array&lt;AdminAnalyticsLoginsResponseDataDailyItem&gt;**](AdminAnalyticsLoginsResponseDataDailyItem.md) | One row per calendar day with at least one login attempt, ascending. | [optional] [default to undefined]
**period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AdminAnalyticsLoginsResponseData } from '@lumoauth/api-client';

const instance: AdminAnalyticsLoginsResponseData = {
    daily,
    period,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
