# AdminPermissionsGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Permission**](Permission.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_get_response import AdminPermissionsGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsGetResponse from a JSON string
admin_permissions_get_response_instance = AdminPermissionsGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsGetResponse.to_json())

# convert the object into a dict
admin_permissions_get_response_dict = admin_permissions_get_response_instance.to_dict()
# create an instance of AdminPermissionsGetResponse from a dict
admin_permissions_get_response_from_dict = AdminPermissionsGetResponse.from_dict(admin_permissions_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


