# StartAgentEnrollmentRequestJwks

The agent's public key: exactly one (private members are refused). A key without \"kid\" gets its RFC 7638 thumbprint as kid.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | **List[Dict[str, object]]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.start_agent_enrollment_request_jwks import StartAgentEnrollmentRequestJwks

# TODO update the JSON string below
json = "{}"
# create an instance of StartAgentEnrollmentRequestJwks from a JSON string
start_agent_enrollment_request_jwks_instance = StartAgentEnrollmentRequestJwks.from_json(json)
# print the JSON string representation of the object
print(StartAgentEnrollmentRequestJwks.to_json())

# convert the object into a dict
start_agent_enrollment_request_jwks_dict = start_agent_enrollment_request_jwks_instance.to_dict()
# create an instance of StartAgentEnrollmentRequestJwks from a dict
start_agent_enrollment_request_jwks_from_dict = StartAgentEnrollmentRequestJwks.from_dict(start_agent_enrollment_request_jwks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


