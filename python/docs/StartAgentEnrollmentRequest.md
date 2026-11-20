# StartAgentEnrollmentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**host** | **str** |  | 
**host_label** | **str** |  | [optional] 
**jwks** | [**StartAgentEnrollmentRequestJwks**](StartAgentEnrollmentRequestJwks.md) |  | 
**capabilities** | [**List[StartAgentEnrollmentRequestCapabilitiesItem]**](StartAgentEnrollmentRequestCapabilitiesItem.md) |  | 
**delegation** | **bool** | The agent asks to act on behalf of the approving person (needed for push approvals). | [optional] 
**inventory** | [**StartAgentEnrollmentRequestInventory**](StartAgentEnrollmentRequestInventory.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.start_agent_enrollment_request import StartAgentEnrollmentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StartAgentEnrollmentRequest from a JSON string
start_agent_enrollment_request_instance = StartAgentEnrollmentRequest.from_json(json)
# print the JSON string representation of the object
print(StartAgentEnrollmentRequest.to_json())

# convert the object into a dict
start_agent_enrollment_request_dict = start_agent_enrollment_request_instance.to_dict()
# create an instance of StartAgentEnrollmentRequest from a dict
start_agent_enrollment_request_from_dict = StartAgentEnrollmentRequest.from_dict(start_agent_enrollment_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


