# PoppyVerifyResultAccount

The account of the access token; null for a signed-out request.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **str** | The user&#39;s id in your organization. | [optional] 
**scope** | **str** |  | [optional] 
**aud** | **List[str]** |  | [optional] 
**exp** | **int** |  | [optional] 
**token_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_verify_result_account import PoppyVerifyResultAccount

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyVerifyResultAccount from a JSON string
poppy_verify_result_account_instance = PoppyVerifyResultAccount.from_json(json)
# print the JSON string representation of the object
print(PoppyVerifyResultAccount.to_json())

# convert the object into a dict
poppy_verify_result_account_dict = poppy_verify_result_account_instance.to_dict()
# create an instance of PoppyVerifyResultAccount from a dict
poppy_verify_result_account_from_dict = PoppyVerifyResultAccount.from_dict(poppy_verify_result_account_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


