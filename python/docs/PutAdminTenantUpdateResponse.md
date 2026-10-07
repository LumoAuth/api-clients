# PutAdminTenantUpdateResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**TenantProfile**](TenantProfile.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_tenant_update_response import PutAdminTenantUpdateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminTenantUpdateResponse from a JSON string
put_admin_tenant_update_response_instance = PutAdminTenantUpdateResponse.from_json(json)
# print the JSON string representation of the object
print(PutAdminTenantUpdateResponse.to_json())

# convert the object into a dict
put_admin_tenant_update_response_dict = put_admin_tenant_update_response_instance.to_dict()
# create an instance of PutAdminTenantUpdateResponse from a dict
put_admin_tenant_update_response_from_dict = PutAdminTenantUpdateResponse.from_dict(put_admin_tenant_update_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


