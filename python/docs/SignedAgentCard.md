# SignedAgentCard


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_version** | **str** |  | 
**name** | **str** |  | 
**description** | **str** |  | 
**url** | **str** | The agent&#39;s A2A endpoint. | 
**preferred_transport** | **str** |  | 
**provider** | [**GetAgentCardResponseProvider**](GetAgentCardResponseProvider.md) |  | 
**capabilities** | [**GetAgentCardResponseCapabilities**](GetAgentCardResponseCapabilities.md) |  | 
**default_input_modes** | **List[str]** |  | 
**default_output_modes** | **List[str]** |  | 
**security_schemes** | **Dict[str, object]** | Keyed by scheme name (lumoauth_oauth2): an oauth2 scheme whose clientCredentials flow points at this organization&#39;s token endpoint and lists the agent&#39;s capabilities as scopes. | 
**security** | **List[Dict[str, List[str]]]** | Security requirements: [{\&quot;lumoauth_oauth2\&quot;: [&lt;capability scopes&gt;]}]. | 
**skills** | [**List[GetAgentCardResponseSkillsItem]**](GetAgentCardResponseSkillsItem.md) |  | 
**version** | **str** | Declared metadata version suffixed with a content digest. | 
**signatures** | [**List[GetAgentCardResponseSignaturesItem]**](GetAgentCardResponseSignaturesItem.md) |  | 

## Example

```python
from lumoauth_api_client.models.signed_agent_card import SignedAgentCard

# TODO update the JSON string below
json = "{}"
# create an instance of SignedAgentCard from a JSON string
signed_agent_card_instance = SignedAgentCard.from_json(json)
# print the JSON string representation of the object
print(SignedAgentCard.to_json())

# convert the object into a dict
signed_agent_card_dict = signed_agent_card_instance.to_dict()
# create an instance of SignedAgentCard from a dict
signed_agent_card_from_dict = SignedAgentCard.from_dict(signed_agent_card_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


