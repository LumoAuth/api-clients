# TenantProfile

The organization (tenant) record as returned by the settings endpoints.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**slug** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**settings** | **Dict[str, object]** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**updated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.tenant_profile import TenantProfile

# TODO update the JSON string below
json = "{}"
# create an instance of TenantProfile from a JSON string
tenant_profile_instance = TenantProfile.from_json(json)
# print the JSON string representation of the object
print(TenantProfile.to_json())

# convert the object into a dict
tenant_profile_dict = tenant_profile_instance.to_dict()
# create an instance of TenantProfile from a dict
tenant_profile_from_dict = TenantProfile.from_dict(tenant_profile_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


