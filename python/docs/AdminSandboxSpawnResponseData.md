# AdminSandboxSpawnResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **str** |  | 
**name** | **str** |  | 
**created_at** | **datetime** |  | 
**expires_at** | **datetime** |  | [optional] 
**owner_email** | **str** |  | [optional] 
**spawned_from** | **str** |  | [optional] 
**api_key** | **str** | API key of the sandbox, with every Admin API scope. Shown only in this response; it expires with the sandbox. | 

## Example

```python
from lumoauth_api_client.models.admin_sandbox_spawn_response_data import AdminSandboxSpawnResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSandboxSpawnResponseData from a JSON string
admin_sandbox_spawn_response_data_instance = AdminSandboxSpawnResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminSandboxSpawnResponseData.to_json())

# convert the object into a dict
admin_sandbox_spawn_response_data_dict = admin_sandbox_spawn_response_data_instance.to_dict()
# create an instance of AdminSandboxSpawnResponseData from a dict
admin_sandbox_spawn_response_data_from_dict = AdminSandboxSpawnResponseData.from_dict(admin_sandbox_spawn_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


