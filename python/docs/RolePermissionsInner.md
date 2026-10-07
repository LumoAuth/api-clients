# RolePermissionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 
**resource** | **str** |  | [optional] 
**action** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.role_permissions_inner import RolePermissionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RolePermissionsInner from a JSON string
role_permissions_inner_instance = RolePermissionsInner.from_json(json)
# print the JSON string representation of the object
print(RolePermissionsInner.to_json())

# convert the object into a dict
role_permissions_inner_dict = role_permissions_inner_instance.to_dict()
# create an instance of RolePermissionsInner from a dict
role_permissions_inner_from_dict = RolePermissionsInner.from_dict(role_permissions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


