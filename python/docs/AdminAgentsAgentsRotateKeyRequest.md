# AdminAgentsAgentsRotateKeyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_key_expires_in_days** | **int** | Days until the new key expires; null for a key that never expires. | [optional] 
**api_key_expires_at** | **datetime** | Exact expiry of the new key (ISO 8601, in the future); null for never. Ignored when apiKeyExpiresInDays is sent. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_agents_rotate_key_request import AdminAgentsAgentsRotateKeyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsAgentsRotateKeyRequest from a JSON string
admin_agents_agents_rotate_key_request_instance = AdminAgentsAgentsRotateKeyRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsAgentsRotateKeyRequest.to_json())

# convert the object into a dict
admin_agents_agents_rotate_key_request_dict = admin_agents_agents_rotate_key_request_instance.to_dict()
# create an instance of AdminAgentsAgentsRotateKeyRequest from a dict
admin_agents_agents_rotate_key_request_from_dict = AdminAgentsAgentsRotateKeyRequest.from_dict(admin_agents_agents_rotate_key_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


