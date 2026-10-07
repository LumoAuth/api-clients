# IssueAgentTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **str** | One of auth, code, exchange, refresh. | [optional] 
**resource_token** | **str** | Resource token binding the request (request_type&#x3D;auth/refresh). | [optional] 
**redirect_uri** | **str** | User-consent redirect (request_type&#x3D;auth/code). | [optional] 
**code** | **str** | Authorization code to exchange (request_type&#x3D;code). | [optional] 
**auth_token** | **str** | Upstream auth token to exchange (request_type&#x3D;exchange). | [optional] 
**refresh_token** | **str** | Refresh token to redeem (request_type&#x3D;refresh). | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_agent_token_request import IssueAgentTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IssueAgentTokenRequest from a JSON string
issue_agent_token_request_instance = IssueAgentTokenRequest.from_json(json)
# print the JSON string representation of the object
print(IssueAgentTokenRequest.to_json())

# convert the object into a dict
issue_agent_token_request_dict = issue_agent_token_request_instance.to_dict()
# create an instance of IssueAgentTokenRequest from a dict
issue_agent_token_request_from_dict = IssueAgentTokenRequest.from_dict(issue_agent_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


