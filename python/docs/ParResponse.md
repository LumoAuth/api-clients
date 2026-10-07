# ParResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_uri** | **str** |  | 
**expires_in** | **int** | Lifetime of the request_uri in seconds. | 

## Example

```python
from lumoauth_api_client.models.par_response import ParResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ParResponse from a JSON string
par_response_instance = ParResponse.from_json(json)
# print the JSON string representation of the object
print(ParResponse.to_json())

# convert the object into a dict
par_response_dict = par_response_instance.to_dict()
# create an instance of ParResponse from a dict
par_response_from_dict = ParResponse.from_dict(par_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


