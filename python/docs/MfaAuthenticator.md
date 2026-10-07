# MfaAuthenticator

One enrolled authenticator. `id` is a stable reference such as `totp:12` or `passkey:7`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 
**tier** | **int** | 1 strongest (passkey) … 4 basic (SMS/email); 5 &#x3D; recovery only | [optional] 
**tier_label** | **str** |  | [optional] 
**amr** | **List[str]** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**activated_at** | **datetime** |  | [optional] 
**last_used_at** | **datetime** |  | [optional] 
**last_used_context** | [**MfaAuthenticatorLastUsedContext**](MfaAuthenticatorLastUsedContext.md) |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mfa_authenticator import MfaAuthenticator

# TODO update the JSON string below
json = "{}"
# create an instance of MfaAuthenticator from a JSON string
mfa_authenticator_instance = MfaAuthenticator.from_json(json)
# print the JSON string representation of the object
print(MfaAuthenticator.to_json())

# convert the object into a dict
mfa_authenticator_dict = mfa_authenticator_instance.to_dict()
# create an instance of MfaAuthenticator from a dict
mfa_authenticator_from_dict = MfaAuthenticator.from_dict(mfa_authenticator_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


