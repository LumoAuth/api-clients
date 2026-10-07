# ListMyAuthenticatorsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**default** | **str** |  | [optional] 
**authenticators** | [**List[MfaAuthenticator]**](MfaAuthenticator.md) |  | [optional] 
**recovery_codes** | [**ListMyAuthenticatorsResponseRecoveryCodes**](ListMyAuthenticatorsResponseRecoveryCodes.md) |  | [optional] 
**allowed_types** | **List[str]** |  | [optional] 
**recommended_type** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_my_authenticators_response import ListMyAuthenticatorsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListMyAuthenticatorsResponse from a JSON string
list_my_authenticators_response_instance = ListMyAuthenticatorsResponse.from_json(json)
# print the JSON string representation of the object
print(ListMyAuthenticatorsResponse.to_json())

# convert the object into a dict
list_my_authenticators_response_dict = list_my_authenticators_response_instance.to_dict()
# create an instance of ListMyAuthenticatorsResponse from a dict
list_my_authenticators_response_from_dict = ListMyAuthenticatorsResponse.from_dict(list_my_authenticators_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


