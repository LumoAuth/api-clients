# ReportAgentUsageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recorded** | [**AdminAgentsReportUsageResponseDataRecorded**](AdminAgentsReportUsageResponseDataRecorded.md) |  | [optional] 
**budget** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.report_agent_usage_response import ReportAgentUsageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ReportAgentUsageResponse from a JSON string
report_agent_usage_response_instance = ReportAgentUsageResponse.from_json(json)
# print the JSON string representation of the object
print(ReportAgentUsageResponse.to_json())

# convert the object into a dict
report_agent_usage_response_dict = report_agent_usage_response_instance.to_dict()
# create an instance of ReportAgentUsageResponse from a dict
report_agent_usage_response_from_dict = ReportAgentUsageResponse.from_dict(report_agent_usage_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


