# AdminSandboxListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[SandboxTenant]**](SandboxTenant.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_sandbox_list_response import AdminSandboxListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminSandboxListResponse from a JSON string
admin_sandbox_list_response_instance = AdminSandboxListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminSandboxListResponse.to_json())

# convert the object into a dict
admin_sandbox_list_response_dict = admin_sandbox_list_response_instance.to_dict()
# create an instance of AdminSandboxListResponse from a dict
admin_sandbox_list_response_from_dict = AdminSandboxListResponse.from_dict(admin_sandbox_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


