# GetAgentCardResponseCapabilities


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**streaming** | **bool** |  | [optional] 
**push_notifications** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.get_agent_card_response_capabilities import GetAgentCardResponseCapabilities

# TODO update the JSON string below
json = "{}"
# create an instance of GetAgentCardResponseCapabilities from a JSON string
get_agent_card_response_capabilities_instance = GetAgentCardResponseCapabilities.from_json(json)
# print the JSON string representation of the object
print(GetAgentCardResponseCapabilities.to_json())

# convert the object into a dict
get_agent_card_response_capabilities_dict = get_agent_card_response_capabilities_instance.to_dict()
# create an instance of GetAgentCardResponseCapabilities from a dict
get_agent_card_response_capabilities_from_dict = GetAgentCardResponseCapabilities.from_dict(get_agent_card_response_capabilities_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


