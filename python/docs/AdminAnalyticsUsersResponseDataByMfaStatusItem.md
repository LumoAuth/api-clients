# AdminAnalyticsUsersResponseDataByMfaStatusItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mfa_enabled** | **bool** |  | [optional] 
**count** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_users_response_data_by_mfa_status_item import AdminAnalyticsUsersResponseDataByMfaStatusItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsUsersResponseDataByMfaStatusItem from a JSON string
admin_analytics_users_response_data_by_mfa_status_item_instance = AdminAnalyticsUsersResponseDataByMfaStatusItem.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsUsersResponseDataByMfaStatusItem.to_json())

# convert the object into a dict
admin_analytics_users_response_data_by_mfa_status_item_dict = admin_analytics_users_response_data_by_mfa_status_item_instance.to_dict()
# create an instance of AdminAnalyticsUsersResponseDataByMfaStatusItem from a dict
admin_analytics_users_response_data_by_mfa_status_item_from_dict = AdminAnalyticsUsersResponseDataByMfaStatusItem.from_dict(admin_analytics_users_response_data_by_mfa_status_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


