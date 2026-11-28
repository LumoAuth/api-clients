# SetResourceAttributeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **object** | A value of the attribute&#39;s data type. | 

## Example

```python
from lumoauth_api_client.models.set_resource_attribute_request import SetResourceAttributeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetResourceAttributeRequest from a JSON string
set_resource_attribute_request_instance = SetResourceAttributeRequest.from_json(json)
# print the JSON string representation of the object
print(SetResourceAttributeRequest.to_json())

# convert the object into a dict
set_resource_attribute_request_dict = set_resource_attribute_request_instance.to_dict()
# create an instance of SetResourceAttributeRequest from a dict
set_resource_attribute_request_from_dict = SetResourceAttributeRequest.from_dict(set_resource_attribute_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


