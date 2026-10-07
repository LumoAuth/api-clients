# SandboxTenant


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**slug** | **str** |  | 
**name** | **str** |  | 
**created_at** | **datetime** |  | 
**expires_at** | **datetime** |  | [optional] 
**owner_email** | **str** |  | [optional] 
**spawned_from** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.sandbox_tenant import SandboxTenant

# TODO update the JSON string below
json = "{}"
# create an instance of SandboxTenant from a JSON string
sandbox_tenant_instance = SandboxTenant.from_json(json)
# print the JSON string representation of the object
print(SandboxTenant.to_json())

# convert the object into a dict
sandbox_tenant_dict = sandbox_tenant_instance.to_dict()
# create an instance of SandboxTenant from a dict
sandbox_tenant_from_dict = SandboxTenant.from_dict(sandbox_tenant_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


