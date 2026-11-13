# AdminAuditLogsRetentionResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retention_days** | **int** | The organization&#39;s own period, between minRetentionDays and maxRetentionDays. It applies while data retention is on and autoDelete is not false. | [optional] 
**auto_delete** | **bool** | false switches the organization&#39;s own period off; the plan&#39;s period still applies | [optional] 
**plan_limit_days** | **int** | The plan&#39;s period: older entries are not returned and are deleted. null when the plan has no limit. | [optional] 
**effective_retention_days** | **int** | How long entries are kept now; null when nothing is deleted | [optional] 
**min_retention_days** | **int** |  | [optional] 
**max_retention_days** | **int** |  | [optional] 

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


