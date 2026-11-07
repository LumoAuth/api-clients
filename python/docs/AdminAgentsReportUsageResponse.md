# AdminAgentsReportUsageResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdminAgentsReportUsageResponseData**](AdminAgentsReportUsageResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.admin_agents_report_usage_response import AdminAgentsReportUsageResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AdminAgentsReportUsageResponse from a JSON string
admin_agents_report_usage_response_instance = AdminAgentsReportUsageResponse.from_json(json)
# print the JSON string representation of the object
print(AdminAgentsReportUsageResponse.to_json())

# convert the object into a dict
admin_agents_report_usage_response_dict = admin_agents_report_usage_response_instance.to_dict()
# create an instance of AdminAgentsReportUsageResponse from a dict
admin_agents_report_usage_response_from_dict = AdminAgentsReportUsageResponse.from_dict(admin_agents_report_usage_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


