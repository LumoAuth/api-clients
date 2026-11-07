# AdminAgentsReportUsageRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokens** | **int** | Model tokens used since the last report (input and output together). | [optional] 
**cost_usd** | **float** | Cost in USD since the last report. | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_report_usage_request import AdminAgentsReportUsageRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsReportUsageRequest from a JSON string
admin_agents_report_usage_request_instance = AdminAgentsReportUsageRequest.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsReportUsageRequest.to_json())

# convert the object into a dict
admin_agents_report_usage_request_dict = admin_agents_report_usage_request_instance.to_dict()
# create an instance of AdminAgentsReportUsageRequest from a dict
admin_agents_report_usage_request_from_dict = AdminAgentsReportUsageRequest.from_dict(admin_agents_report_usage_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


