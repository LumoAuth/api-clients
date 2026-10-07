# AdminAuditLogsStatsResponseDataPeriod


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_from** | **datetime** |  | [optional] 
**to** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_audit_logs_stats_response_data_period import AdminAuditLogsStatsResponseDataPeriod

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAuditLogsStatsResponseDataPeriod from a JSON string
admin_audit_logs_stats_response_data_period_instance = AdminAuditLogsStatsResponseDataPeriod.from_json(json)
# print the JSON string representation of the object
print(AdminAuditLogsStatsResponseDataPeriod.to_json())

# convert the object into a dict
admin_audit_logs_stats_response_data_period_dict = admin_audit_logs_stats_response_data_period_instance.to_dict()
# create an instance of AdminAuditLogsStatsResponseDataPeriod from a dict
admin_audit_logs_stats_response_data_period_from_dict = AdminAuditLogsStatsResponseDataPeriod.from_dict(admin_audit_logs_stats_response_data_period_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


