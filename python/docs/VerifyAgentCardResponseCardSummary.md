# VerifyAgentCardResponseCardSummary

Only when valid=true.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_version** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**provider** | **Dict[str, object]** |  | [optional] 
**skills** | **int** | Number of skills declared on the card. | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_agent_card_response_card_summary import VerifyAgentCardResponseCardSummary

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyAgentCardResponseCardSummary from a JSON string
verify_agent_card_response_card_summary_instance = VerifyAgentCardResponseCardSummary.from_json(json)
# print the JSON string representation of the object
print(VerifyAgentCardResponseCardSummary.to_json())

# convert the object into a dict
verify_agent_card_response_card_summary_dict = verify_agent_card_response_card_summary_instance.to_dict()
# create an instance of VerifyAgentCardResponseCardSummary from a dict
verify_agent_card_response_card_summary_from_dict = VerifyAgentCardResponseCardSummary.from_dict(verify_agent_card_response_card_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


