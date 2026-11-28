# VerifyResourceTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. | 
**resource_token** | **str** | The resource token to validate. | 
**agent** | **str** | Agent identifier the token must be bound to. | 
**agent_jkt** | **str** | JWK thumbprint of the agent key. | 

## Example

```python
from lumoauth_api_client.models.verify_resource_token_request import VerifyResourceTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyResourceTokenRequest from a JSON string
verify_resource_token_request_instance = VerifyResourceTokenRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyResourceTokenRequest.to_json())

# convert the object into a dict
verify_resource_token_request_dict = verify_resource_token_request_instance.to_dict()
# create an instance of VerifyResourceTokenRequest from a dict
verify_resource_token_request_from_dict = VerifyResourceTokenRequest.from_dict(verify_resource_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


