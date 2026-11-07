# AdminAgentsReportUsageResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] 
**budget** | **Dict[str, object]** | Same shape as budget_policy in UserInfo: limits, usage in the current windows, exhausted. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_report_usage_response_data import AdminAgentsReportUsageResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsReportUsageResponseData from a JSON string
admin_agents_report_usage_response_data_instance = AdminAgentsReportUsageResponseData.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsReportUsageResponseData.to_json())

# convert the object into a dict
admin_agents_report_usage_response_data_dict = admin_agents_report_usage_response_data_instance.to_dict()
# create an instance of AdminAgentsReportUsageResponseData from a dict
admin_agents_report_usage_response_data_from_dict = AdminAgentsReportUsageResponseData.from_dict(admin_agents_report_usage_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


