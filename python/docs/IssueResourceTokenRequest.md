# IssueResourceTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent** | **str** | Agent identifier the resource token is bound to. | [optional] 
**agent_jkt** | **str** | JWK thumbprint of the agent key (PoP binding). | [optional] 
**scope** | **str** | Optional space-delimited requested scopes. | [optional] 
**auth_request_url** | **str** | Optional auth request URL to embed in the token. | [optional] 
**auth_server** | **str** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_resource_token_request import IssueResourceTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IssueResourceTokenRequest from a JSON string
issue_resource_token_request_instance = IssueResourceTokenRequest.from_json(json)
# print the JSON string representation of the object
print(IssueResourceTokenRequest.to_json())

# convert the object into a dict
issue_resource_token_request_dict = issue_resource_token_request_instance.to_dict()
# create an instance of IssueResourceTokenRequest from a dict
issue_resource_token_request_from_dict = IssueResourceTokenRequest.from_dict(issue_resource_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


