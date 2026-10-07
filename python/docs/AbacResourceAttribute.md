# AbacResourceAttribute


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**resource_type** | **str** |  | [optional] 
**resource_id** | **str** |  | [optional] 
**attribute_slug** | **str** |  | [optional] 
**attribute_name** | **str** |  | [optional] 
**value** | **object** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_resource_attribute import AbacResourceAttribute

# TODO update the JSON string below
json = "{}"
# create an instance of AbacResourceAttribute from a JSON string
abac_resource_attribute_instance = AbacResourceAttribute.from_json(json)
# print the JSON string representation of the object
print(AbacResourceAttribute.to_json())

# convert the object into a dict
abac_resource_attribute_dict = abac_resource_attribute_instance.to_dict()
# create an instance of AbacResourceAttribute from a dict
abac_resource_attribute_from_dict = AbacResourceAttribute.from_dict(abac_resource_attribute_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


