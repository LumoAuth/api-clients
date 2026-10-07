# AdminAuditLogsStatsResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**period** | [**AdminAuditLogsStatsResponseDataPeriod**](AdminAuditLogsStatsResponseDataPeriod.md) |  | [optional] 
**by_event_type** | **Dict[str, int]** | Top 10 event types by count | [optional] 
**by_action** | **Dict[str, int]** |  | [optional] 
**by_severity** | **Dict[str, int]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_stats_response_data import AdminAuditLogsStatsResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsStatsResponseData from a JSON string
admin_audit_logs_stats_response_data_instance = AdminAuditLogsStatsResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsStatsResponseData.to_json())

# convert the object into a dict
admin_audit_logs_stats_response_data_dict = admin_audit_logs_stats_response_data_instance.to_dict()
# create an instance of AdminAuditLogsStatsResponseData from a dict
admin_audit_logs_stats_response_data_from_dict = AdminAuditLogsStatsResponseData.from_dict(admin_audit_logs_stats_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


