# RemoveUserPermissionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.remove_user_permission_response import RemoveUserPermissionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveUserPermissionResponse from a JSON string
remove_user_permission_response_instance = RemoveUserPermissionResponse.from_json(json)
# print the JSON string representation of the object
print(RemoveUserPermissionResponse.to_json())

# convert the object into a dict
remove_user_permission_response_dict = remove_user_permission_response_instance.to_dict()
# create an instance of RemoveUserPermissionResponse from a dict
remove_user_permission_response_from_dict = RemoveUserPermissionResponse.from_dict(remove_user_permission_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


