# GetAgentCardResponseSkillsItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**name** | **str** |  | 
**description** | **str** |  | 
**tags** | **List[str]** |  | 

## Example

```python
from lumoauth_api_client.models.get_agent_card_response_skills_item import GetAgentCardResponseSkillsItem

# TODO update the JSON string below
json = "{}"
# create an instance of GetAgentCardResponseSkillsItem from a JSON string
get_agent_card_response_skills_item_instance = GetAgentCardResponseSkillsItem.from_json(json)
# print the JSON string representation of the object
print(GetAgentCardResponseSkillsItem.to_json())

# convert the object into a dict
get_agent_card_response_skills_item_dict = get_agent_card_response_skills_item_instance.to_dict()
# create an instance of GetAgentCardResponseSkillsItem from a dict
get_agent_card_response_skills_item_from_dict = GetAgentCardResponseSkillsItem.from_dict(get_agent_card_response_skills_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


