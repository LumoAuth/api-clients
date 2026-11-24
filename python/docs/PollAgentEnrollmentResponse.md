# PollAgentEnrollmentResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agent_id** | **str** |  | 
**client_id** | **str** | The agent id, as the client_id of its token requests. | 
**issuer** | **str** | The value a client assertion&#39;s aud must equal. | 
**token_endpoint** | **str** |  | 
**key_id** | **str** | kid of the registered key (the first one). | [optional] 
**capabilities** | **List[str]** | The capabilities the person granted. | 
**can_act_on_behalf_of_users** | **bool** |  | 
**owner_user_id** | **str** | The approving person, the agent&#39;s owner. | [optional] 
**agent_url** | **str** | The agent&#39;s page in the portal. | 

## Example

```python
from lumoauth_api_client.models.poll_agent_enrollment_response import PollAgentEnrollmentResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PollAgentEnrollmentResponse from a JSON string
poll_agent_enrollment_response_instance = PollAgentEnrollmentResponse.from_json(json)
# print the JSON string representation of the object
print(PollAgentEnrollmentResponse.to_json())

# convert the object into a dict
poll_agent_enrollment_response_dict = poll_agent_enrollment_response_instance.to_dict()
# create an instance of PollAgentEnrollmentResponse from a dict
poll_agent_enrollment_response_from_dict = PollAgentEnrollmentResponse.from_dict(poll_agent_enrollment_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


