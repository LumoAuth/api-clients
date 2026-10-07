# RemoveUserGroupResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.remove_user_group_response import RemoveUserGroupResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveUserGroupResponse from a JSON string
remove_user_group_response_instance = RemoveUserGroupResponse.from_json(json)
# print the JSON string representation of the object
print(RemoveUserGroupResponse.to_json())

# convert the object into a dict
remove_user_group_response_dict = remove_user_group_response_instance.to_dict()
# create an instance of RemoveUserGroupResponse from a dict
remove_user_group_response_from_dict = RemoveUserGroupResponse.from_dict(remove_user_group_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


