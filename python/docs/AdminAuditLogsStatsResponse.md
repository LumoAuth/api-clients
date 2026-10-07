# AdminAuditLogsStatsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAuditLogsStatsResponseData**](AdminAuditLogsStatsResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_stats_response import AdminAuditLogsStatsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsStatsResponse from a JSON string
admin_audit_logs_stats_response_instance = AdminAuditLogsStatsResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsStatsResponse.to_json())

# convert the object into a dict
admin_audit_logs_stats_response_dict = admin_audit_logs_stats_response_instance.to_dict()
# create an instance of AdminAuditLogsStatsResponse from a dict
admin_audit_logs_stats_response_from_dict = AdminAuditLogsStatsResponse.from_dict(admin_audit_logs_stats_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


