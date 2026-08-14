# AdminAgentsAgentsRotateKeyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**api_key** | **str** | The new plaintext API key — shown only in this response. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_agents_rotate_key_response import AdminAgentsAgentsRotateKeyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsAgentsRotateKeyResponse from a JSON string
admin_agents_agents_rotate_key_response_instance = AdminAgentsAgentsRotateKeyResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsAgentsRotateKeyResponse.to_json())

# convert the object into a dict
admin_agents_agents_rotate_key_response_dict = admin_agents_agents_rotate_key_response_instance.to_dict()
# create an instance of AdminAgentsAgentsRotateKeyResponse from a dict
admin_agents_agents_rotate_key_response_from_dict = AdminAgentsAgentsRotateKeyResponse.from_dict(admin_agents_agents_rotate_key_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


