# AdminAgentsGenerateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expires_in** | **int** | Token lifetime in seconds. Default 3600, at most 2592000 (30 days). | [optional] 
**scopes** | **List[str]** | Optional subset of the agent&#39;s capabilities to carry in the token. Omit for all of them; a scope the agent does not have is rejected with 400. | [optional] 

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


