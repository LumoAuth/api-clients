# PoppyVerifyResultSession


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**sid** | **str** |  | [optional] 
**new** | **bool** | true when this request started the Session. | [optional] 
**started_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_verify_result_session import PoppyVerifyResultSession

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyResultSession from a JSON string
poppy_verify_result_session_instance = PoppyVerifyResultSession.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyResultSession.to_json())

# convert the object into a dict
poppy_verify_result_session_dict = poppy_verify_result_session_instance.to_dict()
# create an instance of PoppyVerifyResultSession from a dict
poppy_verify_result_session_from_dict = PoppyVerifyResultSession.from_dict(poppy_verify_result_session_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


