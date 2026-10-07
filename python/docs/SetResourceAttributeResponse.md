# SetResourceAttributeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**data** | [**AbacResourceAttribute**](AbacResourceAttribute.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.set_resource_attribute_response import SetResourceAttributeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SetResourceAttributeResponse from a JSON string
set_resource_attribute_response_instance = SetResourceAttributeResponse.from_json(json)
# print the JSON string representation of the object
print(SetResourceAttributeResponse.to_json())

# convert the object into a dict
set_resource_attribute_response_dict = set_resource_attribute_response_instance.to_dict()
# create an instance of SetResourceAttributeResponse from a dict
set_resource_attribute_response_from_dict = SetResourceAttributeResponse.from_dict(set_resource_attribute_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


