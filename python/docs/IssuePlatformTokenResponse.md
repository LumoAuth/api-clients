# IssuePlatformTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | [optional] 
**issued_token_type** | **str** |  | [optional] 
**token_type** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 
**scope** | **str** |  | [optional] 
**agent_id** | **str** |  | [optional] 
**cnf_jkt** | **str** | RFC 7638 thumbprint of the agent key the token is bound to. | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_platform_token_response import IssuePlatformTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssuePlatformTokenResponse from a JSON string
issue_platform_token_response_instance = IssuePlatformTokenResponse.from_json(json)
# print the JSON string representation of the object
print(IssuePlatformTokenResponse.to_json())

# convert the object into a dict
issue_platform_token_response_dict = issue_platform_token_response_instance.to_dict()
# create an instance of IssuePlatformTokenResponse from a dict
issue_platform_token_response_from_dict = IssuePlatformTokenResponse.from_dict(issue_platform_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


