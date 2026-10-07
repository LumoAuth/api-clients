# AdminAuditLogsExportResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AuditLogEntry]**](AuditLogEntry.md) | Detailed entries | [optional] 
**meta** | [**AdminAuditLogsExportResponseMeta**](AdminAuditLogsExportResponseMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_export_response import AdminAuditLogsExportResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsExportResponse from a JSON string
admin_audit_logs_export_response_instance = AdminAuditLogsExportResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsExportResponse.to_json())

# convert the object into a dict
admin_audit_logs_export_response_dict = admin_audit_logs_export_response_instance.to_dict()
# create an instance of AdminAuditLogsExportResponse from a dict
admin_audit_logs_export_response_from_dict = AdminAuditLogsExportResponse.from_dict(admin_audit_logs_export_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


