# MfaChallengeAlternativesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**tier** | **int** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.mfa_challenge_alternatives_inner import MfaChallengeAlternativesInner

# TODO update the JSON string below
json = "{}"
# create an instance of MfaChallengeAlternativesInner from a JSON string
mfa_challenge_alternatives_inner_instance = MfaChallengeAlternativesInner.from_json(json)
# print the JSON string representation of the object
print(MfaChallengeAlternativesInner.to_json())

# convert the object into a dict
mfa_challenge_alternatives_inner_dict = mfa_challenge_alternatives_inner_instance.to_dict()
# create an instance of MfaChallengeAlternativesInner from a dict
mfa_challenge_alternatives_inner_from_dict = MfaChallengeAlternativesInner.from_dict(mfa_challenge_alternatives_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


