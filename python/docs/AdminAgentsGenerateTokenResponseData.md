# AdminAgentsGenerateTokenResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | [optional] 
**token_type** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 
**jti** | **str** | The token id. Written to the agent.token_issued audit event; the kill switch and a capability reduction deny-list it. | [optional] 
**scopes** | **List[str]** |  | [optional] 
**resource** | **str** | The MCP server the token is bound to, when &#x60;resource&#x60; was sent. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_generate_token_response_data import AdminAgentsGenerateTokenResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsGenerateTokenResponseData from a JSON string
admin_agents_generate_token_response_data_instance = AdminAgentsGenerateTokenResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsGenerateTokenResponseData.to_json())

# convert the object into a dict
admin_agents_generate_token_response_data_dict = admin_agents_generate_token_response_data_instance.to_dict()
# create an instance of AdminAgentsGenerateTokenResponseData from a dict
admin_agents_generate_token_response_data_from_dict = AdminAgentsGenerateTokenResponseData.from_dict(admin_agents_generate_token_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


