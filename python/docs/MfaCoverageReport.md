# MfaCoverageReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_users** | **int** |  | [optional] 
**enrolled_users** | **int** |  | [optional] 
**enrolled_pct** | **float** |  | [optional] 
**by_type** | **Dict[str, int]** |  | [optional] 
**by_tier** | **Dict[str, int]** |  | [optional] 
**requirement** | **str** |  | [optional] 
**in_grace** | **int** |  | [optional] 
**past_grace** | **int** |  | [optional] 
**deferred** | **int** |  | [optional] 
**generated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mfa_coverage_report import MfaCoverageReport

# TODO update the JSON string below
json = "{}"
# create an instance of MfaCoverageReport from a JSON string
mfa_coverage_report_instance = MfaCoverageReport.from_json(json)
# print the JSON string representation of the object
print(MfaCoverageReport.to_json())

# convert the object into a dict
mfa_coverage_report_dict = mfa_coverage_report_instance.to_dict()
# create an instance of MfaCoverageReport from a dict
mfa_coverage_report_from_dict = MfaCoverageReport.from_dict(mfa_coverage_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


