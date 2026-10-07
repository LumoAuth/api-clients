# AdminAnalyticsUsersResponseDataByVerificationStatusItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_verified** | **bool** |  | [optional] 
**count** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_analytics_users_response_data_by_verification_status_item import AdminAnalyticsUsersResponseDataByVerificationStatusItem

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAnalyticsUsersResponseDataByVerificationStatusItem from a JSON string
admin_analytics_users_response_data_by_verification_status_item_instance = AdminAnalyticsUsersResponseDataByVerificationStatusItem.from_json(json)
# print the JSON string representation of the object
print(AdminAnalyticsUsersResponseDataByVerificationStatusItem.to_json())

# convert the object into a dict
admin_analytics_users_response_data_by_verification_status_item_dict = admin_analytics_users_response_data_by_verification_status_item_instance.to_dict()
# create an instance of AdminAnalyticsUsersResponseDataByVerificationStatusItem from a dict
admin_analytics_users_response_data_by_verification_status_item_from_dict = AdminAnalyticsUsersResponseDataByVerificationStatusItem.from_dict(admin_analytics_users_response_data_by_verification_status_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


