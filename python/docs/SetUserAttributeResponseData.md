# SetUserAttributeResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**attribute_slug** | **str** |  | [optional] 
**value** | **object** | The stored value (any JSON type) | [optional] 

## Example

```python
from lumoauth_api_client.models.set_user_attribute_response_data import SetUserAttributeResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of SetUserAttributeResponseData from a JSON string
set_user_attribute_response_data_instance = SetUserAttributeResponseData.from_json(json)
# print the JSON string representation of the object
print(SetUserAttributeResponseData.to_json())

# convert the object into a dict
set_user_attribute_response_data_dict = set_user_attribute_response_data_instance.to_dict()
# create an instance of SetUserAttributeResponseData from a dict
set_user_attribute_response_data_from_dict = SetUserAttributeResponseData.from_dict(set_user_attribute_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


