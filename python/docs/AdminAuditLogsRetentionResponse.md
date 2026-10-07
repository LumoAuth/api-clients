# AdminAuditLogsRetentionResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAuditLogsRetentionResponseData**](AdminAuditLogsRetentionResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_retention_response import AdminAuditLogsRetentionResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsRetentionResponse from a JSON string
admin_audit_logs_retention_response_instance = AdminAuditLogsRetentionResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsRetentionResponse.to_json())

# convert the object into a dict
admin_audit_logs_retention_response_dict = admin_audit_logs_retention_response_instance.to_dict()
# create an instance of AdminAuditLogsRetentionResponse from a dict
admin_audit_logs_retention_response_from_dict = AdminAuditLogsRetentionResponse.from_dict(admin_audit_logs_retention_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


