# AdminAnalyticsDashboardResponseDataUsers


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**active** | **int** |  | [optional] 
**blocked** | **int** |  | [optional] 
**new_last30_days** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_dashboard_response_data_users import AdminAnalyticsDashboardResponseDataUsers

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsDashboardResponseDataUsers from a JSON string
admin_analytics_dashboard_response_data_users_instance = AdminAnalyticsDashboardResponseDataUsers.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsDashboardResponseDataUsers.to_json())

# convert the object into a dict
admin_analytics_dashboard_response_data_users_dict = admin_analytics_dashboard_response_data_users_instance.to_dict()
# create an instance of AdminAnalyticsDashboardResponseDataUsers from a dict
admin_analytics_dashboard_response_data_users_from_dict = AdminAnalyticsDashboardResponseDataUsers.from_dict(admin_analytics_dashboard_response_data_users_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


