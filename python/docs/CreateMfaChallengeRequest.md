# CreateMfaChallengeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purpose** | **str** |  | [optional] [default to 'step_up']
**authenticator_id** | **str** |  | [optional] 
**min_tier** | **int** | Require a factor at least this strong (1 &#x3D; passkey only) | [optional] 
**action_description** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.create_mfa_challenge_request import CreateMfaChallengeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateMfaChallengeRequest from a JSON string
create_mfa_challenge_request_instance = CreateMfaChallengeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateMfaChallengeRequest.to_json())

# convert the object into a dict
create_mfa_challenge_request_dict = create_mfa_challenge_request_instance.to_dict()
# create an instance of CreateMfaChallengeRequest from a dict
create_mfa_challenge_request_from_dict = CreateMfaChallengeRequest.from_dict(create_mfa_challenge_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


