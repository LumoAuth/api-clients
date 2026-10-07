# AdminPermissionsUsageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminPermissionsUsageResponseData**](AdminPermissionsUsageResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_usage_response import AdminPermissionsUsageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsUsageResponse from a JSON string
admin_permissions_usage_response_instance = AdminPermissionsUsageResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsUsageResponse.to_json())

# convert the object into a dict
admin_permissions_usage_response_dict = admin_permissions_usage_response_instance.to_dict()
# create an instance of AdminPermissionsUsageResponse from a dict
admin_permissions_usage_response_from_dict = AdminPermissionsUsageResponse.from_dict(admin_permissions_usage_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


