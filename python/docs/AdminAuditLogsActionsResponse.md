# AdminAuditLogsActionsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional] 
**pagination** | [**PaginationMeta**](PaginationMeta.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_actions_response import AdminAuditLogsActionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsActionsResponse from a JSON string
admin_audit_logs_actions_response_instance = AdminAuditLogsActionsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsActionsResponse.to_json())

# convert the object into a dict
admin_audit_logs_actions_response_dict = admin_audit_logs_actions_response_instance.to_dict()
# create an instance of AdminAuditLogsActionsResponse from a dict
admin_audit_logs_actions_response_from_dict = AdminAuditLogsActionsResponse.from_dict(admin_audit_logs_actions_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


