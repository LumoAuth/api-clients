# IssueAgentTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **str** |  | [optional] 
**auth_token** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 
**token_type** | **str** |  | [optional] 
**refresh_token** | **str** |  | [optional] 
**request_token** | **str** |  | [optional] 
**authorization_uri** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_agent_token_response import IssueAgentTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssueAgentTokenResponse from a JSON string
issue_agent_token_response_instance = IssueAgentTokenResponse.from_json(json)
# print the JSON string representation of the object
print(IssueAgentTokenResponse.to_json())

# convert the object into a dict
issue_agent_token_response_dict = issue_agent_token_response_instance.to_dict()
# create an instance of IssueAgentTokenResponse from a dict
issue_agent_token_response_from_dict = IssueAgentTokenResponse.from_dict(issue_agent_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


