# ListUserAuthenticatorsResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[MfaAuthenticator]**](MfaAuthenticator.md) |  | [optional] 
**status** | **str** |  | [optional] 
**default** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.list_user_authenticators_response import ListUserAuthenticatorsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ListUserAuthenticatorsResponse from a JSON string
list_user_authenticators_response_instance = ListUserAuthenticatorsResponse.from_json(json)
# print the JSON string representation of the object
print(ListUserAuthenticatorsResponse.to_json())

# convert the object into a dict
list_user_authenticators_response_dict = list_user_authenticators_response_instance.to_dict()
# create an instance of ListUserAuthenticatorsResponse from a dict
list_user_authenticators_response_from_dict = ListUserAuthenticatorsResponse.from_dict(list_user_authenticators_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


