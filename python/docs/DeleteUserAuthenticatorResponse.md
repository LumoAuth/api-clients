# DeleteUserAuthenticatorResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MfaAuthenticator**](MfaAuthenticator.md) |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.delete_user_authenticator_response import DeleteUserAuthenticatorResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteUserAuthenticatorResponse from a JSON string
delete_user_authenticator_response_instance = DeleteUserAuthenticatorResponse.from_json(json)
# print the JSON string representation of the object
print(DeleteUserAuthenticatorResponse.to_json())

# convert the object into a dict
delete_user_authenticator_response_dict = delete_user_authenticator_response_instance.to_dict()
# create an instance of DeleteUserAuthenticatorResponse from a dict
delete_user_authenticator_response_from_dict = DeleteUserAuthenticatorResponse.from_dict(delete_user_authenticator_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


