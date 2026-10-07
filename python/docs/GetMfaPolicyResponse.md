# GetMfaPolicyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MfaPolicy**](MfaPolicy.md) |  | [optional] 
**effective_allowed_factors** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_mfa_policy_response import GetMfaPolicyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GetMfaPolicyResponse from a JSON string
get_mfa_policy_response_instance = GetMfaPolicyResponse.from_json(json)
# print the JSON string representation of the object
print(GetMfaPolicyResponse.to_json())

# convert the object into a dict
get_mfa_policy_response_dict = get_mfa_policy_response_instance.to_dict()
# create an instance of GetMfaPolicyResponse from a dict
get_mfa_policy_response_from_dict = GetMfaPolicyResponse.from_dict(get_mfa_policy_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


