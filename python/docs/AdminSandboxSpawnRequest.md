# AdminSandboxSpawnRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**ttl_hours** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sandbox_spawn_request import AdminSandboxSpawnRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSandboxSpawnRequest from a JSON string
admin_sandbox_spawn_request_instance = AdminSandboxSpawnRequest.from_json(json)
# print the JSON string representation of the object
print(AdminSandboxSpawnRequest.to_json())

# convert the object into a dict
admin_sandbox_spawn_request_dict = admin_sandbox_spawn_request_instance.to_dict()
# create an instance of AdminSandboxSpawnRequest from a dict
admin_sandbox_spawn_request_from_dict = AdminSandboxSpawnRequest.from_dict(admin_sandbox_spawn_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


