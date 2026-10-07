# AdminAnalyticsLoginsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAnalyticsLoginsResponseData**](AdminAnalyticsLoginsResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_logins_response import AdminAnalyticsLoginsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsLoginsResponse from a JSON string
admin_analytics_logins_response_instance = AdminAnalyticsLoginsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsLoginsResponse.to_json())

# convert the object into a dict
admin_analytics_logins_response_dict = admin_analytics_logins_response_instance.to_dict()
# create an instance of AdminAnalyticsLoginsResponse from a dict
admin_analytics_logins_response_from_dict = AdminAnalyticsLoginsResponse.from_dict(admin_analytics_logins_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


