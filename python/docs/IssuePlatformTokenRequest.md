# IssuePlatformTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grant_type** | **str** |  | [optional] 
**subject_token** | **str** | A valid AAuth agent token (agent+jwt). | [optional] 
**subject_token_type** | **str** |  | [optional] 
**scope** | **str** | Optional space-delimited scopes; narrows (never widens) the agent capabilities. | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_platform_token_request import IssuePlatformTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IssuePlatformTokenRequest from a JSON string
issue_platform_token_request_instance = IssuePlatformTokenRequest.from_json(json)
# print the JSON string representation of the object
print(IssuePlatformTokenRequest.to_json())

# convert the object into a dict
issue_platform_token_request_dict = issue_platform_token_request_instance.to_dict()
# create an instance of IssuePlatformTokenRequest from a dict
issue_platform_token_request_from_dict = IssuePlatformTokenRequest.from_dict(issue_platform_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


