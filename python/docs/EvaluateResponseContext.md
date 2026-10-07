# EvaluateResponseContext

Only present on a deny, and only for callers holding policies.view

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**reason_admin** | [**EvaluateResponseContextReasonAdmin**](EvaluateResponseContextReasonAdmin.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.evaluate_response_context import EvaluateResponseContext

# TODO update the JSON string below
json = "{}"
# create an instance of EvaluateResponseContext from a JSON string
evaluate_response_context_instance = EvaluateResponseContext.from_json(json)
# print the JSON string representation of the object
print(EvaluateResponseContext.to_json())

# convert the object into a dict
evaluate_response_context_dict = evaluate_response_context_instance.to_dict()
# create an instance of EvaluateResponseContext from a dict
evaluate_response_context_from_dict = EvaluateResponseContext.from_dict(evaluate_response_context_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


