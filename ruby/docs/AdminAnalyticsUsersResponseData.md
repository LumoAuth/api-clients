# LumoAuthApiClient::AdminAnalyticsUsersResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **daily_registrations** | [**Array&lt;AdminAnalyticsUsersResponseDataDailyRegistrationsItem&gt;**](AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md) | One row per calendar day with at least one registration, ascending. | [optional] |
| **by_verification_status** | [**Array&lt;AdminAnalyticsUsersResponseDataByVerificationStatusItem&gt;**](AdminAnalyticsUsersResponseDataByVerificationStatusItem.md) |  | [optional] |
| **by_mfa_status** | [**Array&lt;AdminAnalyticsUsersResponseDataByMfaStatusItem&gt;**](AdminAnalyticsUsersResponseDataByMfaStatusItem.md) |  | [optional] |
| **period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] |

## Example

```ruby
require 'lumoauth_api_client'

instance = LumoAuthApiClient::AdminAnalyticsUsersResponseData.new(
  daily_registrations: null,
  by_verification_status: null,
  by_mfa_status: null,
  period: null
)
```

