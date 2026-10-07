# AdminPermissionsUsageResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**roles** | [**List[GroupRef]**](GroupRef.md) |  | [optional] 
**role_count** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_usage_response_data import AdminPermissionsUsageResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsUsageResponseData from a JSON string
admin_permissions_usage_response_data_instance = AdminPermissionsUsageResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsUsageResponseData.to_json())

# convert the object into a dict
admin_permissions_usage_response_data_dict = admin_permissions_usage_response_data_instance.to_dict()
# create an instance of AdminPermissionsUsageResponseData from a dict
admin_permissions_usage_response_data_from_dict = AdminPermissionsUsageResponseData.from_dict(admin_permissions_usage_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


