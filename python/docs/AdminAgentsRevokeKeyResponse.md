# AdminAgentsRevokeKeyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_revoke_key_response import AdminAgentsRevokeKeyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsRevokeKeyResponse from a JSON string
admin_agents_revoke_key_response_instance = AdminAgentsRevokeKeyResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsRevokeKeyResponse.to_json())

# convert the object into a dict
admin_agents_revoke_key_response_dict = admin_agents_revoke_key_response_instance.to_dict()
# create an instance of AdminAgentsRevokeKeyResponse from a dict
admin_agents_revoke_key_response_from_dict = AdminAgentsRevokeKeyResponse.from_dict(admin_agents_revoke_key_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


