# AdminAnalyticsDashboardResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAnalyticsDashboardResponseData**](AdminAnalyticsDashboardResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_dashboard_response import AdminAnalyticsDashboardResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsDashboardResponse from a JSON string
admin_analytics_dashboard_response_instance = AdminAnalyticsDashboardResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsDashboardResponse.to_json())

# convert the object into a dict
admin_analytics_dashboard_response_dict = admin_analytics_dashboard_response_instance.to_dict()
# create an instance of AdminAnalyticsDashboardResponse from a dict
admin_analytics_dashboard_response_from_dict = AdminAnalyticsDashboardResponse.from_dict(admin_analytics_dashboard_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


