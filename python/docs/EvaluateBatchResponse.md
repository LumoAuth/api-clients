# EvaluateBatchResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**evaluations** | [**List[AuthZenDecision]**](AuthZenDecision.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.evaluate_batch_response import EvaluateBatchResponse

# TODO update the JSON string below
json = "{}"
# create an instance of EvaluateBatchResponse from a JSON string
evaluate_batch_response_instance = EvaluateBatchResponse.from_json(json)
# print the JSON string representation of the object
print(EvaluateBatchResponse.to_json())

# convert the object into a dict
evaluate_batch_response_dict = evaluate_batch_response_instance.to_dict()
# create an instance of EvaluateBatchResponse from a dict
evaluate_batch_response_from_dict = EvaluateBatchResponse.from_dict(evaluate_batch_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


