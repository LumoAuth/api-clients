# AdminSessionsStatsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminSessionsStatsResponseData**](AdminSessionsStatsResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sessions_stats_response import AdminSessionsStatsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsStatsResponse from a JSON string
admin_sessions_stats_response_instance = AdminSessionsStatsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsStatsResponse.to_json())

# convert the object into a dict
admin_sessions_stats_response_dict = admin_sessions_stats_response_instance.to_dict()
# create an instance of AdminSessionsStatsResponse from a dict
admin_sessions_stats_response_from_dict = AdminSessionsStatsResponse.from_dict(admin_sessions_stats_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


