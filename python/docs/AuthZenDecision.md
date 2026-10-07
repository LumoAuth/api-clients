# AuthZenDecision


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**decision** | **bool** |  | [optional] 
**context** | [**EvaluateResponseContext**](EvaluateResponseContext.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.auth_zen_decision import AuthZenDecision

# TODO update the JSON string below
json = "{}"
# create an instance of AuthZenDecision from a JSON string
auth_zen_decision_instance = AuthZenDecision.from_json(json)
# print the JSON string representation of the object
print(AuthZenDecision.to_json())

# convert the object into a dict
auth_zen_decision_dict = auth_zen_decision_instance.to_dict()
# create an instance of AuthZenDecision from a dict
auth_zen_decision_from_dict = AuthZenDecision.from_dict(auth_zen_decision_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


