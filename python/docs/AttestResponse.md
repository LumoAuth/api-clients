# AttestResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | 
**token_type** | **str** |  | 
**expires_in** | **int** |  | 
**scope** | **str** | Space-separated agent capabilities. | 
**identity** | [**AttestResponseIdentity**](AttestResponseIdentity.md) |  | 

## Example

```python
from lumoauth_api_client.models.attest_response import AttestResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AttestResponse from a JSON string
attest_response_instance = AttestResponse.from_json(json)
# print the JSON string representation of the object
print(AttestResponse.to_json())

# convert the object into a dict
attest_response_dict = attest_response_instance.to_dict()
# create an instance of AttestResponse from a dict
attest_response_from_dict = AttestResponse.from_dict(attest_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


