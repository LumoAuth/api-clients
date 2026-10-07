# VerifyAgentCardResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid** | **bool** |  | 
**error** | **str** | Reason, only when valid&#x3D;false. | [optional] 
**signer** | [**VerifyAgentCardResponseSigner**](VerifyAgentCardResponseSigner.md) |  | [optional] 
**card_summary** | [**VerifyAgentCardResponseCardSummary**](VerifyAgentCardResponseCardSummary.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_agent_card_response import VerifyAgentCardResponse

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyAgentCardResponse from a JSON string
verify_agent_card_response_instance = VerifyAgentCardResponse.from_json(json)
# print the JSON string representation of the object
print(VerifyAgentCardResponse.to_json())

# convert the object into a dict
verify_agent_card_response_dict = verify_agent_card_response_instance.to_dict()
# create an instance of VerifyAgentCardResponse from a dict
verify_agent_card_response_from_dict = VerifyAgentCardResponse.from_dict(verify_agent_card_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


