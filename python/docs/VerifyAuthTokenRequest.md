# VerifyAuthTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auth_token** | **str** | The auth token presented by the agent. | 
**resource** | **str** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 

## Example

```python
from lumoauth_api_client.models.verify_auth_token_request import VerifyAuthTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyAuthTokenRequest from a JSON string
verify_auth_token_request_instance = VerifyAuthTokenRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyAuthTokenRequest.to_json())

# convert the object into a dict
verify_auth_token_request_dict = verify_auth_token_request_instance.to_dict()
# create an instance of VerifyAuthTokenRequest from a dict
verify_auth_token_request_from_dict = VerifyAuthTokenRequest.from_dict(verify_auth_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


