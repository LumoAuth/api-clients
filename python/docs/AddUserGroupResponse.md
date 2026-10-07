# AddUserGroupResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.add_user_group_response import AddUserGroupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserGroupResponse from a JSON string
add_user_group_response_instance = AddUserGroupResponse.from_json(json)
# print the JSON string representation of the object
print(AddUserGroupResponse.to_json())

# convert the object into a dict
add_user_group_response_dict = add_user_group_response_instance.to_dict()
# create an instance of AddUserGroupResponse from a dict
add_user_group_response_from_dict = AddUserGroupResponse.from_dict(add_user_group_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


