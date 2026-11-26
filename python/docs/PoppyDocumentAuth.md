# PoppyDocumentAuth


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuer** | **str** | The organization&#39;s issuer that personal agents use. | [optional] 
**disabled** | **bool** | true while the organization offers personal agents no sign-in. | [optional] 
**scopes** | **Dict[str, str]** | Scope name to description. | [optional] 
**scope_hints** | [**Dict[str, PoppyDocumentAuthScopeHintsValue]**](PoppyDocumentAuthScopeHintsValue.md) |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_document_auth import PoppyDocumentAuth

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyDocumentAuth from a JSON string
poppy_document_auth_instance = PoppyDocumentAuth.from_json(json)
# print the JSON string representation of the object
print(PoppyDocumentAuth.to_json())

# convert the object into a dict
poppy_document_auth_dict = poppy_document_auth_instance.to_dict()
# create an instance of PoppyDocumentAuth from a dict
poppy_document_auth_from_dict = PoppyDocumentAuth.from_dict(poppy_document_auth_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


