# RotateClientSecretResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**RotateClientSecretResponseData**](RotateClientSecretResponseData.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.rotate_client_secret_response import RotateClientSecretResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RotateClientSecretResponse from a JSON string
rotate_client_secret_response_instance = RotateClientSecretResponse.from_json(json)
# print the JSON string representation of the object
print(RotateClientSecretResponse.to_json())

# convert the object into a dict
rotate_client_secret_response_dict = rotate_client_secret_response_instance.to_dict()
# create an instance of RotateClientSecretResponse from a dict
rotate_client_secret_response_from_dict = RotateClientSecretResponse.from_dict(rotate_client_secret_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


