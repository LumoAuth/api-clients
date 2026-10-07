# AgentOutboundConnection


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_id** | **str** |  | 
**name** | **str** |  | 
**provider** | **str** |  | 
**provider_label** | **str** | Human-readable provider name. | 
**grant_mode** | **str** |  | 
**scopes** | **List[str]** |  | 
**user_delegated** | **bool** |  | 
**machine_grant_status** | **str** | Status of the machine grant (not_established when none exists); null for user-delegated connections. | 
**linked_users** | **int** | Number of users with an active grant; null for machine connections. | 

## Example

```python
from lumoauth_api_client.models.agent_outbound_connection import AgentOutboundConnection

# TODO update the JSON string below
json = "{}"
# create an instance of AgentOutboundConnection from a JSON string
agent_outbound_connection_instance = AgentOutboundConnection.from_json(json)
# print the JSON string representation of the object
print(AgentOutboundConnection.to_json())

# convert the object into a dict
agent_outbound_connection_dict = agent_outbound_connection_instance.to_dict()
# create an instance of AgentOutboundConnection from a dict
agent_outbound_connection_from_dict = AgentOutboundConnection.from_dict(agent_outbound_connection_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


