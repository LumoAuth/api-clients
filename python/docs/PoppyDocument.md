# PoppyDocument

The poppy.json of one Company domain (Personal Agent Protocol 3.1), built from the organization's settings.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**protocol_version** | **str** |  | 
**organization** | [**PoppyDocumentOrganization**](PoppyDocumentOrganization.md) |  | 
**auth** | [**PoppyDocumentAuth**](PoppyDocumentAuth.md) |  | [optional] 
**agent** | [**PoppyDocumentAgent**](PoppyDocumentAgent.md) |  | [optional] 
**web** | [**PoppyDocumentWeb**](PoppyDocumentWeb.md) |  | [optional] 
**tasks** | [**PoppyDocumentTasks**](PoppyDocumentTasks.md) |  | [optional] 
**apis** | [**List[PoppyDocumentApisInner]**](PoppyDocumentApisInner.md) |  | [optional] 
**extensions** | **Dict[str, List[Dict[str, object]]]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_document import PoppyDocument

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyDocument from a JSON string
poppy_document_instance = PoppyDocument.from_json(json)
# print the JSON string representation of the object
print(PoppyDocument.to_json())

# convert the object into a dict
poppy_document_dict = poppy_document_instance.to_dict()
# create an instance of PoppyDocument from a dict
poppy_document_from_dict = PoppyDocument.from_dict(poppy_document_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


