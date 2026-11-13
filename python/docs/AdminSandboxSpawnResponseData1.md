# AdminSandboxSpawnResponseData1


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_key** | **str** | API key of the sandbox, with every Admin API scope. Shown only in this response; it expires with the sandbox. | 

## Example

```python
from lumoauth_api_client.models.admin_sandbox_spawn_response_data1 import AdminSandboxSpawnResponseData1

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSandboxSpawnResponseData1 from a JSON string
admin_sandbox_spawn_response_data1_instance = AdminSandboxSpawnResponseData1.from_json(json)
# print the JSON string representation of the object
print(AdminSandboxSpawnResponseData1.to_json())

# convert the object into a dict
admin_sandbox_spawn_response_data1_dict = admin_sandbox_spawn_response_data1_instance.to_dict()
# create an instance of AdminSandboxSpawnResponseData1 from a dict
admin_sandbox_spawn_response_data1_from_dict = AdminSandboxSpawnResponseData1.from_dict(admin_sandbox_spawn_response_data1_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


