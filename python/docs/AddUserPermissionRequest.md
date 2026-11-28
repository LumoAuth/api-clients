# AddUserPermissionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permission_id** | **int** |  | 

## Example

```python
from lumoauth_api_client.models.add_user_permission_request import AddUserPermissionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserPermissionRequest from a JSON string
add_user_permission_request_instance = AddUserPermissionRequest.from_json(json)
# print the JSON string representation of the object
print(AddUserPermissionRequest.to_json())

# convert the object into a dict
add_user_permission_request_dict = add_user_permission_request_instance.to_dict()
# create an instance of AddUserPermissionRequest from a dict
add_user_permission_request_from_dict = AddUserPermissionRequest.from_dict(add_user_permission_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


