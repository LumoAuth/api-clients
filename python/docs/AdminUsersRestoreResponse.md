# AdminUsersRestoreResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_users_restore_response import AdminUsersRestoreResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminUsersRestoreResponse from a JSON string
admin_users_restore_response_instance = AdminUsersRestoreResponse.from_json(json)
# print the JSON string representation of the object
print(AdminUsersRestoreResponse.to_json())

# convert the object into a dict
admin_users_restore_response_dict = admin_users_restore_response_instance.to_dict()
# create an instance of AdminUsersRestoreResponse from a dict
admin_users_restore_response_from_dict = AdminUsersRestoreResponse.from_dict(admin_users_restore_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


