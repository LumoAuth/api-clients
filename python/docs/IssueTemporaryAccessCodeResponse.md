# IssueTemporaryAccessCodeResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**IssueTemporaryAccessCodeResponseData**](IssueTemporaryAccessCodeResponseData.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_temporary_access_code_response import IssueTemporaryAccessCodeResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssueTemporaryAccessCodeResponse from a JSON string
issue_temporary_access_code_response_instance = IssueTemporaryAccessCodeResponse.from_json(json)
# print the JSON string representation of the object
print(IssueTemporaryAccessCodeResponse.to_json())

# convert the object into a dict
issue_temporary_access_code_response_dict = issue_temporary_access_code_response_instance.to_dict()
# create an instance of IssueTemporaryAccessCodeResponse from a dict
issue_temporary_access_code_response_from_dict = IssueTemporaryAccessCodeResponse.from_dict(issue_temporary_access_code_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


