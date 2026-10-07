# AdminAuditLogsListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[AuditLogEntry]**](AuditLogEntry.md) |  | [optional] 
**meta** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 
**resource_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_list_response import AdminAuditLogsListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsListResponse from a JSON string
admin_audit_logs_list_response_instance = AdminAuditLogsListResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsListResponse.to_json())

# convert the object into a dict
admin_audit_logs_list_response_dict = admin_audit_logs_list_response_instance.to_dict()
# create an instance of AdminAuditLogsListResponse from a dict
admin_audit_logs_list_response_from_dict = AdminAuditLogsListResponse.from_dict(admin_audit_logs_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


