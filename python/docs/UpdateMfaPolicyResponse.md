# UpdateMfaPolicyResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**MfaPolicy**](MfaPolicy.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.update_mfa_policy_response import UpdateMfaPolicyResponse

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMfaPolicyResponse from a JSON string
update_mfa_policy_response_instance = UpdateMfaPolicyResponse.from_json(json)
# print the JSON string representation of the object
print(UpdateMfaPolicyResponse.to_json())

# convert the object into a dict
update_mfa_policy_response_dict = update_mfa_policy_response_instance.to_dict()
# create an instance of UpdateMfaPolicyResponse from a dict
update_mfa_policy_response_from_dict = UpdateMfaPolicyResponse.from_dict(update_mfa_policy_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


