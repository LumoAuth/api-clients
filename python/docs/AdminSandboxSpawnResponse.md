# AdminSandboxSpawnResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**SandboxTenant**](SandboxTenant.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sandbox_spawn_response import AdminSandboxSpawnResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSandboxSpawnResponse from a JSON string
admin_sandbox_spawn_response_instance = AdminSandboxSpawnResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSandboxSpawnResponse.to_json())

# convert the object into a dict
admin_sandbox_spawn_response_dict = admin_sandbox_spawn_response_instance.to_dict()
# create an instance of AdminSandboxSpawnResponse from a dict
admin_sandbox_spawn_response_from_dict = AdminSandboxSpawnResponse.from_dict(admin_sandbox_spawn_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


