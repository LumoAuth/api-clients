# AdminAnalyticsLoginsResponseDataPeriod


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**days** | **int** | Effective window, clamped to 1-90. | [optional] 
**var_from** | **datetime** |  | [optional] 
**to** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_logins_response_data_period import AdminAnalyticsLoginsResponseDataPeriod

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsLoginsResponseDataPeriod from a JSON string
admin_analytics_logins_response_data_period_instance = AdminAnalyticsLoginsResponseDataPeriod.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsLoginsResponseDataPeriod.to_json())

# convert the object into a dict
admin_analytics_logins_response_data_period_dict = admin_analytics_logins_response_data_period_instance.to_dict()
# create an instance of AdminAnalyticsLoginsResponseDataPeriod from a dict
admin_analytics_logins_response_data_period_from_dict = AdminAnalyticsLoginsResponseDataPeriod.from_dict(admin_analytics_logins_response_data_period_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


