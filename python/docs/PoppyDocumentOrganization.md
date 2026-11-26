# PoppyDocumentOrganization


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**domain** | **str** |  | 
**logo_uri** | **str** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_document_organization import PoppyDocumentOrganization

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyDocumentOrganization from a JSON string
poppy_document_organization_instance = PoppyDocumentOrganization.from_json(json)
# print the JSON string representation of the object
print(PoppyDocumentOrganization.to_json())

# convert the object into a dict
poppy_document_organization_dict = poppy_document_organization_instance.to_dict()
# create an instance of PoppyDocumentOrganization from a dict
poppy_document_organization_from_dict = PoppyDocumentOrganization.from_dict(poppy_document_organization_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


