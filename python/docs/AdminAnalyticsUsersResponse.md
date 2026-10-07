# AdminAnalyticsUsersResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAnalyticsUsersResponseData**](AdminAnalyticsUsersResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_users_response import AdminAnalyticsUsersResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsUsersResponse from a JSON string
admin_analytics_users_response_instance = AdminAnalyticsUsersResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsUsersResponse.to_json())

# convert the object into a dict
admin_analytics_users_response_dict = admin_analytics_users_response_instance.to_dict()
# create an instance of AdminAnalyticsUsersResponse from a dict
admin_analytics_users_response_from_dict = AdminAnalyticsUsersResponse.from_dict(admin_analytics_users_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


