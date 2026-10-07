# AdminSessionsCountResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminSessionsCountResponseData**](AdminSessionsCountResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sessions_count_response import AdminSessionsCountResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSessionsCountResponse from a JSON string
admin_sessions_count_response_instance = AdminSessionsCountResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSessionsCountResponse.to_json())

# convert the object into a dict
admin_sessions_count_response_dict = admin_sessions_count_response_instance.to_dict()
# create an instance of AdminSessionsCountResponse from a dict
admin_sessions_count_response_from_dict = AdminSessionsCountResponse.from_dict(admin_sessions_count_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


