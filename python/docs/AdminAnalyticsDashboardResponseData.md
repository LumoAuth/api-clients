# AdminAnalyticsDashboardResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | [**AdminAnalyticsDashboardResponseDataUsers**](AdminAnalyticsDashboardResponseDataUsers.md) |  | [optional] 
**clients** | [**AdminScopesListResponseMeta**](AdminScopesListResponseMeta.md) |  | [optional] 
**authentication** | [**AdminAnalyticsDashboardResponseDataAuthentication**](AdminAnalyticsDashboardResponseDataAuthentication.md) |  | [optional] 
**audit** | [**AdminAnalyticsDashboardResponseDataAudit**](AdminAnalyticsDashboardResponseDataAudit.md) |  | [optional] 
**generated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_dashboard_response_data import AdminAnalyticsDashboardResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsDashboardResponseData from a JSON string
admin_analytics_dashboard_response_data_instance = AdminAnalyticsDashboardResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsDashboardResponseData.to_json())

# convert the object into a dict
admin_analytics_dashboard_response_data_dict = admin_analytics_dashboard_response_data_instance.to_dict()
# create an instance of AdminAnalyticsDashboardResponseData from a dict
admin_analytics_dashboard_response_data_from_dict = AdminAnalyticsDashboardResponseData.from_dict(admin_analytics_dashboard_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


