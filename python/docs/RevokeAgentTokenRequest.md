# RevokeAgentTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token** | **str** | The auth token JTI or refresh token value to revoke. | [optional] 
**token_type** | **str** | auth_token (default) or refresh_token. | [optional] 

## Example

```python
from lumoauth_api_client.models.revoke_agent_token_request import RevokeAgentTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeAgentTokenRequest from a JSON string
revoke_agent_token_request_instance = RevokeAgentTokenRequest.from_json(json)
# print the JSON string representation of the object
print(RevokeAgentTokenRequest.to_json())

# convert the object into a dict
revoke_agent_token_request_dict = revoke_agent_token_request_instance.to_dict()
# create an instance of RevokeAgentTokenRequest from a dict
revoke_agent_token_request_from_dict = RevokeAgentTokenRequest.from_dict(revoke_agent_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


