# ListMyAuthenticatorsResponseRecoveryCodes


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remaining** | **int** |  | [optional] 
**generated_at** | **datetime** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_my_authenticators_response_recovery_codes import ListMyAuthenticatorsResponseRecoveryCodes

# TODO update the JSON string below
json = "{}"
# create an instance of ListMyAuthenticatorsResponseRecoveryCodes from a JSON string
list_my_authenticators_response_recovery_codes_instance = ListMyAuthenticatorsResponseRecoveryCodes.from_json(json)
# print the JSON string representation of the object
print(ListMyAuthenticatorsResponseRecoveryCodes.to_json())

# convert the object into a dict
list_my_authenticators_response_recovery_codes_dict = list_my_authenticators_response_recovery_codes_instance.to_dict()
# create an instance of ListMyAuthenticatorsResponseRecoveryCodes from a dict
list_my_authenticators_response_recovery_codes_from_dict = ListMyAuthenticatorsResponseRecoveryCodes.from_dict(list_my_authenticators_response_recovery_codes_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


