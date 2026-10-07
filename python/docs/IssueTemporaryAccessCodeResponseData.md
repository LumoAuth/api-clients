# IssueTemporaryAccessCodeResponseData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**expires_at** | **datetime** |  | [optional] 
**single_use** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_temporary_access_code_response_data import IssueTemporaryAccessCodeResponseData

# TODO update the JSON string below
json = "{}"
# create an instance of IssueTemporaryAccessCodeResponseData from a JSON string
issue_temporary_access_code_response_data_instance = IssueTemporaryAccessCodeResponseData.from_json(json)
# print the JSON string representation of the object
print(IssueTemporaryAccessCodeResponseData.to_json())

# convert the object into a dict
issue_temporary_access_code_response_data_dict = issue_temporary_access_code_response_data_instance.to_dict()
# create an instance of IssueTemporaryAccessCodeResponseData from a dict
issue_temporary_access_code_response_data_from_dict = IssueTemporaryAccessCodeResponseData.from_dict(issue_temporary_access_code_response_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


