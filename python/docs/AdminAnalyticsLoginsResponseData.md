# AdminAnalyticsLoginsResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**daily** | [**List[AdminAnalyticsLoginsResponseDataDailyItem]**](AdminAnalyticsLoginsResponseDataDailyItem.md) | One row per calendar day with at least one login attempt, ascending. | [optional] 
**period** | [**AdminAnalyticsLoginsResponseDataPeriod**](AdminAnalyticsLoginsResponseDataPeriod.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_logins_response_data import AdminAnalyticsLoginsResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsLoginsResponseData from a JSON string
admin_analytics_logins_response_data_instance = AdminAnalyticsLoginsResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsLoginsResponseData.to_json())

# convert the object into a dict
admin_analytics_logins_response_data_dict = admin_analytics_logins_response_data_instance.to_dict()
# create an instance of AdminAnalyticsLoginsResponseData from a dict
admin_analytics_logins_response_data_from_dict = AdminAnalyticsLoginsResponseData.from_dict(admin_analytics_logins_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


