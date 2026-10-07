# Group


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**slug** | **str** |  | 
**description** | **str** |  | [optional] 
**is_system** | **bool** |  | 
**member_count** | **int** |  | 
**role_count** | **int** |  | 
**created_at** | **datetime** |  | 
**roles** | [**List[RoleRef]**](RoleRef.md) | Detailed responses only | [optional] 
**members** | [**List[UserRef]**](UserRef.md) | Detailed responses only | [optional] 
**updated_at** | **datetime** | Detailed responses only | [optional] 

## Example

```python
from lumoauth_api_client.models.group import Group

# TODO update the JSON string below
json = "{}"
# create an instance of Group from a JSON string
group_instance = Group.from_json(json)
# print the JSON string representation of the object
print(Group.to_json())

# convert the object into a dict
group_dict = group_instance.to_dict()
# create an instance of Group from a dict
group_from_dict = Group.from_dict(group_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


