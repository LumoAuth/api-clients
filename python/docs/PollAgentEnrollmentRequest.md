# PollAgentEnrollmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enrollment_code** | **str** |  | 

## Example

```python
from lumoauth_api_client.models.poll_agent_enrollment_request import PollAgentEnrollmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PollAgentEnrollmentRequest from a JSON string
poll_agent_enrollment_request_instance = PollAgentEnrollmentRequest.from_json(json)
# print the JSON string representation of the object
print(PollAgentEnrollmentRequest.to_json())

# convert the object into a dict
poll_agent_enrollment_request_dict = poll_agent_enrollment_request_instance.to_dict()
# create an instance of PollAgentEnrollmentRequest from a dict
poll_agent_enrollment_request_from_dict = PollAgentEnrollmentRequest.from_dict(poll_agent_enrollment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


