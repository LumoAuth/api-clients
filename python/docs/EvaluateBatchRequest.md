# EvaluateBatchRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **Dict[str, object]** | Default for every evaluation. | [optional] 
**action** | **Dict[str, object]** |  | [optional] 
**resource** | **Dict[str, object]** |  | [optional] 
**context** | **Dict[str, object]** |  | [optional] 
**evaluations** | **List[Dict[str, object]]** | Evaluation requests; each member overrides the defaults. | 

## Example

```python
from lumoauth_api_client.models.evaluate_batch_request import EvaluateBatchRequest

# TODO update the JSON string below
json = "{}"
# create an instance of EvaluateBatchRequest from a JSON string
evaluate_batch_request_instance = EvaluateBatchRequest.from_json(json)
# print the JSON string representation of the object
print(EvaluateBatchRequest.to_json())

# convert the object into a dict
evaluate_batch_request_dict = evaluate_batch_request_instance.to_dict()
# create an instance of EvaluateBatchRequest from a dict
evaluate_batch_request_from_dict = EvaluateBatchRequest.from_dict(evaluate_batch_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


