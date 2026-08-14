# IssueDelegateTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**delegate_sub** | **str** | Subject identifier of the delegate the agent token is issued to. | [optional] 
**delegate_public_key** | **object** | The delegate public key (JWK) bound into the agent token cnf. | [optional] 
**audience** | **object** | Optional audience (string or array of strings). | [optional] 

## Example

```python
from lumoauth_api_client.models.issue_delegate_token_request import IssueDelegateTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IssueDelegateTokenRequest from a JSON string
issue_delegate_token_request_instance = IssueDelegateTokenRequest.from_json(json)
# print the JSON string representation of the object
print(IssueDelegateTokenRequest.to_json())

# convert the object into a dict
issue_delegate_token_request_dict = issue_delegate_token_request_instance.to_dict()
# create an instance of IssueDelegateTokenRequest from a dict
issue_delegate_token_request_from_dict = IssueDelegateTokenRequest.from_dict(issue_delegate_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


