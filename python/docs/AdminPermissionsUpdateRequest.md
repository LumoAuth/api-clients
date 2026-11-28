# AdminPermissionsUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**resource** | **str** |  | [optional] 
**action** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_permissions_update_request import AdminPermissionsUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminPermissionsUpdateRequest from a JSON string
admin_permissions_update_request_instance = AdminPermissionsUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(AdminPermissionsUpdateRequest.to_json())

# convert the object into a dict
admin_permissions_update_request_dict = admin_permissions_update_request_instance.to_dict()
# create an instance of AdminPermissionsUpdateRequest from a dict
admin_permissions_update_request_from_dict = AdminPermissionsUpdateRequest.from_dict(admin_permissions_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


