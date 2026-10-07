# IssueResourceTokenResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource_token** | **str** |  | [optional] 
**token_type** | **str** |  | [optional] 
**expires_in** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_resource_token_response import IssueResourceTokenResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IssueResourceTokenResponse from a JSON string
issue_resource_token_response_instance = IssueResourceTokenResponse.from_json(json)
# print the JSON string representation of the object
print(IssueResourceTokenResponse.to_json())

# convert the object into a dict
issue_resource_token_response_dict = issue_resource_token_response_instance.to_dict()
# create an instance of IssueResourceTokenResponse from a dict
issue_resource_token_response_from_dict = IssueResourceTokenResponse.from_dict(issue_resource_token_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


