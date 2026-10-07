# AdminTenantGetResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**TenantProfile**](TenantProfile.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_tenant_get_response import AdminTenantGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminTenantGetResponse from a JSON string
admin_tenant_get_response_instance = AdminTenantGetResponse.from_json(json)
# print the JSON string representation of the object
print(AdminTenantGetResponse.to_json())

# convert the object into a dict
admin_tenant_get_response_dict = admin_tenant_get_response_instance.to_dict()
# create an instance of AdminTenantGetResponse from a dict
admin_tenant_get_response_from_dict = AdminTenantGetResponse.from_dict(admin_tenant_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


