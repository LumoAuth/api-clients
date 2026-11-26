# PoppyDocumentAgent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocols** | [**List[PoppyDocumentAgentProtocolsInner]**](PoppyDocumentAgentProtocolsInner.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_document_agent import PoppyDocumentAgent

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyDocumentAgent from a JSON string
poppy_document_agent_instance = PoppyDocumentAgent.from_json(json)
# print the JSON string representation of the object
print(PoppyDocumentAgent.to_json())

# convert the object into a dict
poppy_document_agent_dict = poppy_document_agent_instance.to_dict()
# create an instance of PoppyDocumentAgent from a dict
poppy_document_agent_from_dict = PoppyDocumentAgent.from_dict(poppy_document_agent_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


