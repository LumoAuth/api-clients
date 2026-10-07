# AdminAnalyticsDashboardResponseDataAuthentication


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**logins_last7_days** | **int** |  | [optional] 
**failed_logins_last7_days** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_dashboard_response_data_authentication import AdminAnalyticsDashboardResponseDataAuthentication

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsDashboardResponseDataAuthentication from a JSON string
admin_analytics_dashboard_response_data_authentication_instance = AdminAnalyticsDashboardResponseDataAuthentication.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsDashboardResponseDataAuthentication.to_json())

# convert the object into a dict
admin_analytics_dashboard_response_data_authentication_dict = admin_analytics_dashboard_response_data_authentication_instance.to_dict()
# create an instance of AdminAnalyticsDashboardResponseDataAuthentication from a dict
admin_analytics_dashboard_response_data_authentication_from_dict = AdminAnalyticsDashboardResponseDataAuthentication.from_dict(admin_analytics_dashboard_response_data_authentication_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


