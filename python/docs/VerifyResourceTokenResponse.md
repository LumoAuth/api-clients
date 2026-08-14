# VerifyResourceTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | [optional] 
**resource** | **str** |  | [optional] 
**scope** | **str** |  | [optional] 
**auth_request_url** | **str** |  | [optional] 
**error** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_resource_token_response import VerifyResourceTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyResourceTokenResponse from a JSON string
verify_resource_token_response_instance = VerifyResourceTokenResponse.from_json(json)
# print the JSON string representation of the object
print(VerifyResourceTokenResponse.to_json())

# convert the object into a dict
verify_resource_token_response_dict = verify_resource_token_response_instance.to_dict()
# create an instance of VerifyResourceTokenResponse from a dict
verify_resource_token_response_from_dict = VerifyResourceTokenResponse.from_dict(verify_resource_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


