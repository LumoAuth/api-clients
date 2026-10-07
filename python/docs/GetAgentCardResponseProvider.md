# GetAgentCardResponseProvider


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**organization** | **str** |  | [optional] 
**url** | **str** | The organization&#39;s issuer URL. | [optional] 

## Example

```python
from lumoauth_api_client.models.get_agent_card_response_provider import GetAgentCardResponseProvider

# TODO update the JSON string below
json = "{}"
# create an instance of GetAgentCardResponseProvider from a JSON string
get_agent_card_response_provider_instance = GetAgentCardResponseProvider.from_json(json)
# print the JSON string representation of the object
print(GetAgentCardResponseProvider.to_json())

# convert the object into a dict
get_agent_card_response_provider_dict = get_agent_card_response_provider_instance.to_dict()
# create an instance of GetAgentCardResponseProvider from a dict
get_agent_card_response_provider_from_dict = GetAgentCardResponseProvider.from_dict(get_agent_card_response_provider_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


