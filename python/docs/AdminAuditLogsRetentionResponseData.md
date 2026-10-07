# AdminAuditLogsRetentionResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retention_days** | **int** | Effective retention, capped by the plan limit | [optional] 
**auto_delete** | **bool** |  | [optional] 
**plan_limit_days** | **int** | Plan cap; null when unlimited or billing enforcement is off | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_retention_response_data import AdminAuditLogsRetentionResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsRetentionResponseData from a JSON string
admin_audit_logs_retention_response_data_instance = AdminAuditLogsRetentionResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsRetentionResponseData.to_json())

# convert the object into a dict
admin_audit_logs_retention_response_data_dict = admin_audit_logs_retention_response_data_instance.to_dict()
# create an instance of AdminAuditLogsRetentionResponseData from a dict
admin_audit_logs_retention_response_data_from_dict = AdminAuditLogsRetentionResponseData.from_dict(admin_audit_logs_retention_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


