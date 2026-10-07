# AdminAuditLogsExportResponseMeta


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**exported_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_export_response_meta import AdminAuditLogsExportResponseMeta

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsExportResponseMeta from a JSON string
admin_audit_logs_export_response_meta_instance = AdminAuditLogsExportResponseMeta.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsExportResponseMeta.to_json())

# convert the object into a dict
admin_audit_logs_export_response_meta_dict = admin_audit_logs_export_response_meta_instance.to_dict()
# create an instance of AdminAuditLogsExportResponseMeta from a dict
admin_audit_logs_export_response_meta_from_dict = AdminAuditLogsExportResponseMeta.from_dict(admin_audit_logs_export_response_meta_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


