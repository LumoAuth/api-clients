# PutAdminTenantUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the organization. | [optional] 
**settings** | **Dict[str, object]** | General settings; keys merge with the stored ones and null clears a key. Writable keys: security, audit_log_retention_days, audit_log_auto_delete, agent_governance, b2b_org_admins_may_invite_new_accounts (boolean) and authz, whose only key is audit_allow_decisions (boolean: also write an audit entry, authzen.evaluation_allowed, for every ALLOW of the AuthZEN evaluation endpoints; denials are always audited). Any other key is refused with 400. | [optional] 

## Example

```python
from lumoauth_api_client.models.put_admin_tenant_update_request import PutAdminTenantUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminTenantUpdateRequest from a JSON string
put_admin_tenant_update_request_instance = PutAdminTenantUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminTenantUpdateRequest.to_json())

# convert the object into a dict
put_admin_tenant_update_request_dict = put_admin_tenant_update_request_instance.to_dict()
# create an instance of PutAdminTenantUpdateRequest from a dict
put_admin_tenant_update_request_from_dict = PutAdminTenantUpdateRequest.from_dict(put_admin_tenant_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


