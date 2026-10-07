# AdminAgentsGenerateTokenResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **str** |  | [optional] 
**token_type** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 
**scopes** | **List[str]** |  | [optional] 

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


