# AdminAgentsGenerateTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **object** | The issued token and its metadata (access_token, expires_in, ...). | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_generate_token_response import AdminAgentsGenerateTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsGenerateTokenResponse from a JSON string
admin_agents_generate_token_response_instance = AdminAgentsGenerateTokenResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsGenerateTokenResponse.to_json())

# convert the object into a dict
admin_agents_generate_token_response_dict = admin_agents_generate_token_response_instance.to_dict()
# create an instance of AdminAgentsGenerateTokenResponse from a dict
admin_agents_generate_token_response_from_dict = AdminAgentsGenerateTokenResponse.from_dict(admin_agents_generate_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


