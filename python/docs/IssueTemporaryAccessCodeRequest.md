# IssueTemporaryAccessCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reason** | **str** |  | 
**ttl_minutes** | **int** |  | [optional] [default to 60]
**single_use** | **bool** |  | [optional] [default to True]

## Example

```python
from lumoauth_api_client.models.issue_temporary_access_code_request import IssueTemporaryAccessCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IssueTemporaryAccessCodeRequest from a JSON string
issue_temporary_access_code_request_instance = IssueTemporaryAccessCodeRequest.from_json(json)
# print the JSON string representation of the object
print(IssueTemporaryAccessCodeRequest.to_json())

# convert the object into a dict
issue_temporary_access_code_request_dict = issue_temporary_access_code_request_instance.to_dict()
# create an instance of IssueTemporaryAccessCodeRequest from a dict
issue_temporary_access_code_request_from_dict = IssueTemporaryAccessCodeRequest.from_dict(issue_temporary_access_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


