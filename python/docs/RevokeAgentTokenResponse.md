# RevokeAgentTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**revoked** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.revoke_agent_token_response import RevokeAgentTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeAgentTokenResponse from a JSON string
revoke_agent_token_response_instance = RevokeAgentTokenResponse.from_json(json)
# print the JSON string representation of the object
print(RevokeAgentTokenResponse.to_json())

# convert the object into a dict
revoke_agent_token_response_dict = revoke_agent_token_response_instance.to_dict()
# create an instance of RevokeAgentTokenResponse from a dict
revoke_agent_token_response_from_dict = RevokeAgentTokenResponse.from_dict(revoke_agent_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


