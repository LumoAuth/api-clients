# VerifyAuthTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | [optional] 
**agent** | **str** |  | [optional] 
**agent_delegate** | **str** |  | [optional] 
**resource** | **str** |  | [optional] 
**sub** | **str** |  | [optional] 
**scope** | **str** |  | [optional] 
**cnf_jkt** | **str** |  | [optional] 
**act** | **object** |  | [optional] 
**pop_required** | **bool** |  | [optional] 
**error** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_auth_token_response import VerifyAuthTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyAuthTokenResponse from a JSON string
verify_auth_token_response_instance = VerifyAuthTokenResponse.from_json(json)
# print the JSON string representation of the object
print(VerifyAuthTokenResponse.to_json())

# convert the object into a dict
verify_auth_token_response_dict = verify_auth_token_response_instance.to_dict()
# create an instance of VerifyAuthTokenResponse from a dict
verify_auth_token_response_from_dict = VerifyAuthTokenResponse.from_dict(verify_auth_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


