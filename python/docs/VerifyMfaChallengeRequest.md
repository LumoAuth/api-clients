# VerifyMfaChallengeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**credential** | **object** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_mfa_challenge_request import VerifyMfaChallengeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyMfaChallengeRequest from a JSON string
verify_mfa_challenge_request_instance = VerifyMfaChallengeRequest.from_json(json)
# print the JSON string representation of the object
print(VerifyMfaChallengeRequest.to_json())

# convert the object into a dict
verify_mfa_challenge_request_dict = verify_mfa_challenge_request_instance.to_dict()
# create an instance of VerifyMfaChallengeRequest from a dict
verify_mfa_challenge_request_from_dict = VerifyMfaChallengeRequest.from_dict(verify_mfa_challenge_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


