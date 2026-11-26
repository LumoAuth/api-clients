# PoppyDocumentWeb


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**browser_session_endpoint** | **str** |  | [optional] 
**disabled** | **bool** |  | [optional] 
**unscoped** | **bool** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_document_web import PoppyDocumentWeb

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyDocumentWeb from a JSON string
poppy_document_web_instance = PoppyDocumentWeb.from_json(json)
# print the JSON string representation of the object
print(PoppyDocumentWeb.to_json())

# convert the object into a dict
poppy_document_web_dict = poppy_document_web_instance.to_dict()
# create an instance of PoppyDocumentWeb from a dict
poppy_document_web_from_dict = PoppyDocumentWeb.from_dict(poppy_document_web_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


