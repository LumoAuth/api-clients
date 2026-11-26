# PoppyVerifyResultResponse

What the personal agent must get — relay it unchanged.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** |  | [optional] 
**headers** | **Dict[str, str]** |  | [optional] 
**body** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_verify_result_response import PoppyVerifyResultResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyResultResponse from a JSON string
poppy_verify_result_response_instance = PoppyVerifyResultResponse.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyResultResponse.to_json())

# convert the object into a dict
poppy_verify_result_response_dict = poppy_verify_result_response_instance.to_dict()
# create an instance of PoppyVerifyResultResponse from a dict
poppy_verify_result_response_from_dict = PoppyVerifyResultResponse.from_dict(poppy_verify_result_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


