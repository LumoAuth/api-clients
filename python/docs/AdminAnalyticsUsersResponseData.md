# AdminAnalyticsUsersResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily_registrations** | [**List[AdminAnalyticsUsersResponseDataDailyRegistrationsItem]**](AdminAnalyticsUsersResponseDataDailyRegistrationsItem.md) | One row per calendar day with at least one registration, ascending. | [optional] 
**by_verification_status** | [**List[AdminAnalyticsUsersResponseDataByVerificationStatusItem]**](AdminAnalyticsUsersResponseDataByVerificationStatusItem.md) |  | [optional] 
**by_mfa_status** | [**List[AdminAnalyticsUsersResponseDataByMfaStatusItem]**](AdminAnalyticsUsersResponseDataByMfaStatusItem.md) |  | [optional] 
**period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_users_response_data import AdminAnalyticsUsersResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsUsersResponseData from a JSON string
admin_analytics_users_response_data_instance = AdminAnalyticsUsersResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsUsersResponseData.to_json())

# convert the object into a dict
admin_analytics_users_response_data_dict = admin_analytics_users_response_data_instance.to_dict()
# create an instance of AdminAnalyticsUsersResponseData from a dict
admin_analytics_users_response_data_from_dict = AdminAnalyticsUsersResponseData.from_dict(admin_analytics_users_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


