# RoleRef

Minimal role reference embedded in other resources.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.role_ref import RoleRef

# TODO update the JSON string below
json = "{}"
# create an instance of RoleRef from a JSON string
role_ref_instance = RoleRef.from_json(json)
# print the JSON string representation of the object
print(RoleRef.to_json())

# convert the object into a dict
role_ref_dict = role_ref_instance.to_dict()
# create an instance of RoleRef from a dict
role_ref_from_dict = RoleRef.from_dict(role_ref_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


