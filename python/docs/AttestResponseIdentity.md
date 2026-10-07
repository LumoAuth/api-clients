# AttestResponseIdentity

The verified workload identity.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider** | **str** |  | [optional] 
**subject** | **str** |  | [optional] 
**issuer** | **str** |  | [optional] 
**audience_generic** | **bool** | True when the registered audience is not specific to this deployment (operators should move to the agent-specific audience). | [optional] 

## Example

```python
from lumoauth_api_client.models.attest_response_identity import AttestResponseIdentity

# TODO update the JSON string below
json = "{}"
# create an instance of AttestResponseIdentity from a JSON string
attest_response_identity_instance = AttestResponseIdentity.from_json(json)
# print the JSON string representation of the object
print(AttestResponseIdentity.to_json())

# convert the object into a dict
attest_response_identity_dict = attest_response_identity_instance.to_dict()
# create an instance of AttestResponseIdentity from a dict
attest_response_identity_from_dict = AttestResponseIdentity.from_dict(attest_response_identity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


