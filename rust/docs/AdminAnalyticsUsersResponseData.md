# AdminAnalyticsUsersResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily_registrations** | Option<[**Vec<models::AdminAnalyticsUsersResponseDataDailyRegistrationsItem>**](AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md)> | One row per calendar day with at least one registration, ascending. | [optional]
**by_verification_status** | Option<[**Vec<models::AdminAnalyticsUsersResponseDataByVerificationStatusItem>**](AdminAnalyticsUsersResponseDataByVerificationStatusItem.md)> |  | [optional]
**by_mfa_status** | Option<[**Vec<models::AdminAnalyticsUsersResponseDataByMfaStatusItem>**](AdminAnalyticsUsersResponseDataByMfaStatusItem.md)> |  | [optional]
**period** | Option<[**models::AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md)> |  | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


