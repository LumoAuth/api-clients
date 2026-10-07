# SetUserAttributeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**data** | [**SetUserAttributeResponseData**](SetUserAttributeResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.set_user_attribute_response import SetUserAttributeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of SetUserAttributeResponse from a JSON string
set_user_attribute_response_instance = SetUserAttributeResponse.from_json(json)
# print the JSON string representation of the object
print(SetUserAttributeResponse.to_json())

# convert the object into a dict
set_user_attribute_response_dict = set_user_attribute_response_instance.to_dict()
# create an instance of SetUserAttributeResponse from a dict
set_user_attribute_response_from_dict = SetUserAttributeResponse.from_dict(set_user_attribute_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


