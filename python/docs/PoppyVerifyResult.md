# PoppyVerifyResult

The verification result. `active` true — the request is verified; false — return `response` to the personal agent unchanged.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** |  | 
**client_id** | **str** | The personal agent (the URL of its metadata document). | [optional] 
**client_name** | **str** |  | [optional] 
**user_id** | **str** | The User ID — the personal agent&#39;s stable pseudonym for its user at your organization. | [optional] 
**agent_id** | **str** |  | [optional] 
**session** | [**PoppyVerifyResultSession**](PoppyVerifyResultSession.md) |  | [optional] 
**signed_in** | **bool** |  | [optional] 
**account** | [**PoppyVerifyResultAccount**](PoppyVerifyResultAccount.md) |  | [optional] 
**version** | **str** |  | [optional] 
**extensions** | **Dict[str, str]** | The extensions that the request declares, name to version. | [optional] 
**error** | **str** |  | [optional] 
**error_description** | **str** |  | [optional] 
**scope** | **str** | The scopes that a refusal asks for. | [optional] 
**response** | [**PoppyVerifyResultResponse**](PoppyVerifyResultResponse.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_verify_result import PoppyVerifyResult

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyResult from a JSON string
poppy_verify_result_instance = PoppyVerifyResult.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyResult.to_json())

# convert the object into a dict
poppy_verify_result_dict = poppy_verify_result_instance.to_dict()
# create an instance of PoppyVerifyResult from a dict
poppy_verify_result_from_dict = PoppyVerifyResult.from_dict(poppy_verify_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


