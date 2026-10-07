# ListAttributeDefinitionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AbacAttributeDefinition]**](AbacAttributeDefinition.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_attribute_definitions_response import ListAttributeDefinitionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListAttributeDefinitionsResponse from a JSON string
list_attribute_definitions_response_instance = ListAttributeDefinitionsResponse.from_json(json)
# print the JSON string representation of the object
print(ListAttributeDefinitionsResponse.to_json())

# convert the object into a dict
list_attribute_definitions_response_dict = list_attribute_definitions_response_instance.to_dict()
# create an instance of ListAttributeDefinitionsResponse from a dict
list_attribute_definitions_response_from_dict = ListAttributeDefinitionsResponse.from_dict(list_attribute_definitions_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


