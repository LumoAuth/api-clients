# GroupRef


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.group_ref import GroupRef

# TODO update the JSON string below
json = "{}"
# create an instance of GroupRef from a JSON string
group_ref_instance = GroupRef.from_json(json)
# print the JSON string representation of the object
print(GroupRef.to_json())

# convert the object into a dict
group_ref_dict = group_ref_instance.to_dict()
# create an instance of GroupRef from a dict
group_ref_from_dict = GroupRef.from_dict(group_ref_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


