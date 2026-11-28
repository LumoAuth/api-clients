# AbacAttributesCreateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**slug** | **str** |  | 
**attribute_type** | **str** | Also accepted as attribute_type. | 
**data_type** | **str** | Also accepted as data_type. | 
**description** | **str** |  | [optional] 
**default_value** | **object** |  | [optional] 
**validation_rules** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_attributes_create_request import AbacAttributesCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AbacAttributesCreateRequest from a JSON string
abac_attributes_create_request_instance = AbacAttributesCreateRequest.from_json(json)
# print the JSON string representation of the object
print(AbacAttributesCreateRequest.to_json())

# convert the object into a dict
abac_attributes_create_request_dict = abac_attributes_create_request_instance.to_dict()
# create an instance of AbacAttributesCreateRequest from a dict
abac_attributes_create_request_from_dict = AbacAttributesCreateRequest.from_dict(abac_attributes_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


