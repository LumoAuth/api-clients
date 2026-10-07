# VerifyAgentCardResponseSigner

Only when valid=true.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**kid** | **str** |  | [optional] 
**alg** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.verify_agent_card_response_signer import VerifyAgentCardResponseSigner

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyAgentCardResponseSigner from a JSON string
verify_agent_card_response_signer_instance = VerifyAgentCardResponseSigner.from_json(json)
# print the JSON string representation of the object
print(VerifyAgentCardResponseSigner.to_json())

# convert the object into a dict
verify_agent_card_response_signer_dict = verify_agent_card_response_signer_instance.to_dict()
# create an instance of VerifyAgentCardResponseSigner from a dict
verify_agent_card_response_signer_from_dict = VerifyAgentCardResponseSigner.from_dict(verify_agent_card_response_signer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


