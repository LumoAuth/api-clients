# AdminAgentsGenerateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires_in** | **int** | Token lifetime in seconds. Default 3600, minimum 60, at most 86400 (24 hours). Above 3600 only together with &#x60;resource&#x60;: a long-lived token is always bound to one MCP server, never to the organization API. | [optional] 
**scopes** | **List[str]** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional] 
**resource** | **str** | Optional resource URI of an active MCP server of this organization. The token is then audience-bound to that server (and no longer works on the LumoAuth API) and lives at most the server&#39;s token lifetime. Servers that require DPoP are refused with 400. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_generate_token_request import AdminAgentsGenerateTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsGenerateTokenRequest from a JSON string
admin_agents_generate_token_request_instance = AdminAgentsGenerateTokenRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsGenerateTokenRequest.to_json())

# convert the object into a dict
admin_agents_generate_token_request_dict = admin_agents_generate_token_request_instance.to_dict()
# create an instance of AdminAgentsGenerateTokenRequest from a dict
admin_agents_generate_token_request_from_dict = AdminAgentsGenerateTokenRequest.from_dict(admin_agents_generate_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


