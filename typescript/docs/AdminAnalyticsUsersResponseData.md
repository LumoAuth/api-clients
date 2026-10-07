# AdminAnalyticsUsersResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dailyRegistrations** | [**Array&lt;AdminAnalyticsUsersResponseDataDailyRegistrationsItem&gt;**](AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md) | One row per calendar day with at least one registration, ascending. | [optional] [default to undefined]
**byVerificationStatus** | [**Array&lt;AdminAnalyticsUsersResponseDataByVerificationStatusItem&gt;**](AdminAnalyticsUsersResponseDataByVerificationStatusItem.md) |  | [optional] [default to undefined]
**byMfaStatus** | [**Array&lt;AdminAnalyticsUsersResponseDataByMfaStatusItem&gt;**](AdminAnalyticsUsersResponseDataByMfaStatusItem.md) |  | [optional] [default to undefined]
**period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] [default to undefined]

## Example

```typescript
import { AdminAnalyticsUsersResponseData } from '@lumoauth/api-client';

const instance: AdminAnalyticsUsersResponseData = {
    dailyRegistrations,
    byVerificationStatus,
    byMfaStatus,
    period,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
