# GetMyAttributesResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **str** |  | [optional] 
**attributes** | [**GetMyAttributesResponseAttributes**](GetMyAttributesResponseAttributes.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_my_attributes_response import GetMyAttributesResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetMyAttributesResponse from a JSON string
get_my_attributes_response_instance = GetMyAttributesResponse.from_json(json)
# print the JSON string representation of the object
print(GetMyAttributesResponse.to_json())

# convert the object into a dict
get_my_attributes_response_dict = get_my_attributes_response_instance.to_dict()
# create an instance of GetMyAttributesResponse from a dict
get_my_attributes_response_from_dict = GetMyAttributesResponse.from_dict(get_my_attributes_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


