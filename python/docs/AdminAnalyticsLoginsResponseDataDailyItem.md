# AdminAnalyticsLoginsResponseDataDailyItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_date** | **date** |  | [optional] 
**total** | **int** |  | [optional] 
**successful** | **int** |  | [optional] 
**failed** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_logins_response_data_daily_item import AdminAnalyticsLoginsResponseDataDailyItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsLoginsResponseDataDailyItem from a JSON string
admin_analytics_logins_response_data_daily_item_instance = AdminAnalyticsLoginsResponseDataDailyItem.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsLoginsResponseDataDailyItem.to_json())

# convert the object into a dict
admin_analytics_logins_response_data_daily_item_dict = admin_analytics_logins_response_data_daily_item_instance.to_dict()
# create an instance of AdminAnalyticsLoginsResponseDataDailyItem from a dict
admin_analytics_logins_response_data_daily_item_from_dict = AdminAnalyticsLoginsResponseDataDailyItem.from_dict(admin_analytics_logins_response_data_daily_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


