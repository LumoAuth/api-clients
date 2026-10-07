# AdminPermissionsCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Permission**](Permission.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_create_response import AdminPermissionsCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsCreateResponse from a JSON string
admin_permissions_create_response_instance = AdminPermissionsCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsCreateResponse.to_json())

# convert the object into a dict
admin_permissions_create_response_dict = admin_permissions_create_response_instance.to_dict()
# create an instance of AdminPermissionsCreateResponse from a dict
admin_permissions_create_response_from_dict = AdminPermissionsCreateResponse.from_dict(admin_permissions_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


