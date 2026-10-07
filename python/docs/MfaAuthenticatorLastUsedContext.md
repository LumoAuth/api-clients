# MfaAuthenticatorLastUsedContext


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip** | **str** |  | [optional] 
**geo** | **str** |  | [optional] 
**user_agent** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mfa_authenticator_last_used_context import MfaAuthenticatorLastUsedContext

# TODO update the JSON string below
json = "{}"
# create an instance of MfaAuthenticatorLastUsedContext from a JSON string
mfa_authenticator_last_used_context_instance = MfaAuthenticatorLastUsedContext.from_json(json)
# print the JSON string representation of the object
print(MfaAuthenticatorLastUsedContext.to_json())

# convert the object into a dict
mfa_authenticator_last_used_context_dict = mfa_authenticator_last_used_context_instance.to_dict()
# create an instance of MfaAuthenticatorLastUsedContext from a dict
mfa_authenticator_last_used_context_from_dict = MfaAuthenticatorLastUsedContext.from_dict(mfa_authenticator_last_used_context_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


