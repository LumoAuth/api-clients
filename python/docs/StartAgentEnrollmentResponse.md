# StartAgentEnrollmentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enrollment_code** | **str** | 43 characters, secret: only the poll needs it. | 
**user_code** | **str** |  | 
**verification_uri** | **str** |  | 
**verification_uri_complete** | **str** |  | 
**key_fingerprint** | **str** | First 16 characters of the RFC 7638 thumbprint of the key, in groups of four. | 
**expires_in** | **int** |  | 
**interval** | **int** |  | 

## Example

```python
from lumoauth_api_client.models.start_agent_enrollment_response import StartAgentEnrollmentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of StartAgentEnrollmentResponse from a JSON string
start_agent_enrollment_response_instance = StartAgentEnrollmentResponse.from_json(json)
# print the JSON string representation of the object
print(StartAgentEnrollmentResponse.to_json())

# convert the object into a dict
start_agent_enrollment_response_dict = start_agent_enrollment_response_instance.to_dict()
# create an instance of StartAgentEnrollmentResponse from a dict
start_agent_enrollment_response_from_dict = StartAgentEnrollmentResponse.from_dict(start_agent_enrollment_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


