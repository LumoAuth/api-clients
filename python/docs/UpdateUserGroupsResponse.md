# UpdateUserGroupsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**User**](User.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_user_groups_response import UpdateUserGroupsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateUserGroupsResponse from a JSON string
update_user_groups_response_instance = UpdateUserGroupsResponse.from_json(json)
# print the JSON string representation of the object
print(UpdateUserGroupsResponse.to_json())

# convert the object into a dict
update_user_groups_response_dict = update_user_groups_response_instance.to_dict()
# create an instance of UpdateUserGroupsResponse from a dict
update_user_groups_response_from_dict = UpdateUserGroupsResponse.from_dict(update_user_groups_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


