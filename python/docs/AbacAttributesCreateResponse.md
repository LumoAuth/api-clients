# AbacAttributesCreateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AbacAttributeDefinition**](AbacAttributeDefinition.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.abac_attributes_create_response import AbacAttributesCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AbacAttributesCreateResponse from a JSON string
abac_attributes_create_response_instance = AbacAttributesCreateResponse.from_json(json)
# print the JSON string representation of the object
print(AbacAttributesCreateResponse.to_json())

# convert the object into a dict
abac_attributes_create_response_dict = abac_attributes_create_response_instance.to_dict()
# create an instance of AbacAttributesCreateResponse from a dict
abac_attributes_create_response_from_dict = AbacAttributesCreateResponse.from_dict(abac_attributes_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


