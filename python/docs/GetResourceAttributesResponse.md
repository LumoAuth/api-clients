# GetResourceAttributesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_type** | **str** |  | [optional] 
**resource_id** | **str** |  | [optional] 
**attributes** | [**GetResourceAttributesResponseAttributes**](GetResourceAttributesResponseAttributes.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_resource_attributes_response import GetResourceAttributesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetResourceAttributesResponse from a JSON string
get_resource_attributes_response_instance = GetResourceAttributesResponse.from_json(json)
# print the JSON string representation of the object
print(GetResourceAttributesResponse.to_json())

# convert the object into a dict
get_resource_attributes_response_dict = get_resource_attributes_response_instance.to_dict()
# create an instance of GetResourceAttributesResponse from a dict
get_resource_attributes_response_from_dict = GetResourceAttributesResponse.from_dict(get_resource_attributes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


