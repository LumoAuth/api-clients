# GetAgentCardResponseSignaturesItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protected** | **str** | base64url JWS protected header. | 
**signature** | **str** | base64url JWS signature. | 

## Example

```python
from lumoauth_api_client.models.get_agent_card_response_signatures_item import GetAgentCardResponseSignaturesItem

# TODO update the JSON string below
json = "{}"
# create an instance of GetAgentCardResponseSignaturesItem from a JSON string
get_agent_card_response_signatures_item_instance = GetAgentCardResponseSignaturesItem.from_json(json)
# print the JSON string representation of the object
print(GetAgentCardResponseSignaturesItem.to_json())

# convert the object into a dict
get_agent_card_response_signatures_item_dict = get_agent_card_response_signatures_item_instance.to_dict()
# create an instance of GetAgentCardResponseSignaturesItem from a dict
get_agent_card_response_signatures_item_from_dict = GetAgentCardResponseSignaturesItem.from_dict(get_agent_card_response_signatures_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


