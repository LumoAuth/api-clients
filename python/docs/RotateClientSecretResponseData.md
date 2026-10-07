# RotateClientSecretResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_id** | **str** | The identifier used in the request path | [optional] 
**secret** | **str** | New plaintext client secret — returned only once | [optional] 
**note** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.rotate_client_secret_response_data import RotateClientSecretResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of RotateClientSecretResponseData from a JSON string
rotate_client_secret_response_data_instance = RotateClientSecretResponseData.from_json(json)
# print the JSON string representation of the object
print(RotateClientSecretResponseData.to_json())

# convert the object into a dict
rotate_client_secret_response_data_dict = rotate_client_secret_response_data_instance.to_dict()
# create an instance of RotateClientSecretResponseData from a dict
rotate_client_secret_response_data_from_dict = RotateClientSecretResponseData.from_dict(rotate_client_secret_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


