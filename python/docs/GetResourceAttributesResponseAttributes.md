# GetResourceAttributesResponseAttributes

id and type plus one entry per stored attribute (slug => value)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_resource_attributes_response_attributes import GetResourceAttributesResponseAttributes

# TODO update the JSON string below
json = "{}"
# create an instance of GetResourceAttributesResponseAttributes from a JSON string
get_resource_attributes_response_attributes_instance = GetResourceAttributesResponseAttributes.from_json(json)
# print the JSON string representation of the object
print(GetResourceAttributesResponseAttributes.to_json())

# convert the object into a dict
get_resource_attributes_response_attributes_dict = get_resource_attributes_response_attributes_instance.to_dict()
# create an instance of GetResourceAttributesResponseAttributes from a dict
get_resource_attributes_response_attributes_from_dict = GetResourceAttributesResponseAttributes.from_dict(get_resource_attributes_response_attributes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


