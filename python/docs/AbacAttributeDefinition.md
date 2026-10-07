# AbacAttributeDefinition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**slug** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**attribute_type** | **str** |  | [optional] 
**data_type** | **str** |  | [optional] 
**validation_rules** | **Dict[str, object]** |  | [optional] 
**default_value** | **object** |  | [optional] 
**is_required** | **bool** |  | [optional] 
**is_system** | **bool** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_attribute_definition import AbacAttributeDefinition

# TODO update the JSON string below
json = "{}"
# create an instance of AbacAttributeDefinition from a JSON string
abac_attribute_definition_instance = AbacAttributeDefinition.from_json(json)
# print the JSON string representation of the object
print(AbacAttributeDefinition.to_json())

# convert the object into a dict
abac_attribute_definition_dict = abac_attribute_definition_instance.to_dict()
# create an instance of AbacAttributeDefinition from a dict
abac_attribute_definition_from_dict = AbacAttributeDefinition.from_dict(abac_attribute_definition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


