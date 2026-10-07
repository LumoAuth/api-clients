# MfaChallengeAuthenticator


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mfa_challenge_authenticator import MfaChallengeAuthenticator

# TODO update the JSON string below
json = "{}"
# create an instance of MfaChallengeAuthenticator from a JSON string
mfa_challenge_authenticator_instance = MfaChallengeAuthenticator.from_json(json)
# print the JSON string representation of the object
print(MfaChallengeAuthenticator.to_json())

# convert the object into a dict
mfa_challenge_authenticator_dict = mfa_challenge_authenticator_instance.to_dict()
# create an instance of MfaChallengeAuthenticator from a dict
mfa_challenge_authenticator_from_dict = MfaChallengeAuthenticator.from_dict(mfa_challenge_authenticator_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


