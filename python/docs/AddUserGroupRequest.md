# AddUserGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_id** | **int** | Group id (or use groupSlug). | [optional] 
**group_slug** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.add_user_group_request import AddUserGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserGroupRequest from a JSON string
add_user_group_request_instance = AddUserGroupRequest.from_json(json)
# print the JSON string representation of the object
print(AddUserGroupRequest.to_json())

# convert the object into a dict
add_user_group_request_dict = add_user_group_request_instance.to_dict()
# create an instance of AddUserGroupRequest from a dict
add_user_group_request_from_dict = AddUserGroupRequest.from_dict(add_user_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


