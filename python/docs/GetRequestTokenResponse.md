# GetRequestTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | [optional] 
**token_type** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_request_token_response import GetRequestTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetRequestTokenResponse from a JSON string
get_request_token_response_instance = GetRequestTokenResponse.from_json(json)
# print the JSON string representation of the object
print(GetRequestTokenResponse.to_json())

# convert the object into a dict
get_request_token_response_dict = get_request_token_response_instance.to_dict()
# create an instance of GetRequestTokenResponse from a dict
get_request_token_response_from_dict = GetRequestTokenResponse.from_dict(get_request_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


