# GetMfaCoverageReportResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MfaCoverageReport**](MfaCoverageReport.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_mfa_coverage_report_response import GetMfaCoverageReportResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetMfaCoverageReportResponse from a JSON string
get_mfa_coverage_report_response_instance = GetMfaCoverageReportResponse.from_json(json)
# print the JSON string representation of the object
print(GetMfaCoverageReportResponse.to_json())

# convert the object into a dict
get_mfa_coverage_report_response_dict = get_mfa_coverage_report_response_instance.to_dict()
# create an instance of GetMfaCoverageReportResponse from a dict
get_mfa_coverage_report_response_from_dict = GetMfaCoverageReportResponse.from_dict(get_mfa_coverage_report_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


