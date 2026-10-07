# ExpandRelationResponseTree

Userset tree node. Leaves carry subjects; union/intersection nodes carry children of the same shape.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**object** | **str** |  | [optional] 
**relation** | **str** |  | [optional] 
**children** | **List[object]** | Nested nodes (same shape); empty for leaves. | [optional] 
**subjects** | **List[str]** | Direct subjects; usersets are listed as-is. | [optional] 

## Example

```python
from lumoauth_api_client.models.expand_relation_response_tree import ExpandRelationResponseTree

# TODO update the JSON string below
json = "{}"
# create an instance of ExpandRelationResponseTree from a JSON string
expand_relation_response_tree_instance = ExpandRelationResponseTree.from_json(json)
# print the JSON string representation of the object
print(ExpandRelationResponseTree.to_json())

# convert the object into a dict
expand_relation_response_tree_dict = expand_relation_response_tree_instance.to_dict()
# create an instance of ExpandRelationResponseTree from a dict
expand_relation_response_tree_from_dict = ExpandRelationResponseTree.from_dict(expand_relation_response_tree_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


