# PutAdminAuditLogsRetentionUpdateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retention_days** | **int** | Days to keep audit entries: at least the shorter of 90 days and the plan window, at most the plan window. | 

## Example

```python
from lumoauth_api_client.models.put_admin_audit_logs_retention_update_request import PutAdminAuditLogsRetentionUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PutAdminAuditLogsRetentionUpdateRequest from a JSON string
put_admin_audit_logs_retention_update_request_instance = PutAdminAuditLogsRetentionUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(PutAdminAuditLogsRetentionUpdateRequest.to_json())

# convert the object into a dict
put_admin_audit_logs_retention_update_request_dict = put_admin_audit_logs_retention_update_request_instance.to_dict()
# create an instance of PutAdminAuditLogsRetentionUpdateRequest from a dict
put_admin_audit_logs_retention_update_request_from_dict = PutAdminAuditLogsRetentionUpdateRequest.from_dict(put_admin_audit_logs_retention_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


