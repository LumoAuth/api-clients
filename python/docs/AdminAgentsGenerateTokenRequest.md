# AdminAgentsGenerateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scopes** | **List[str]** | Optional scopes to embed in the token. | [optional] 
**ttl** | **int** | Optional token lifetime in seconds. | [optional] 

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


