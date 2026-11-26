# PoppyProtectedResourceMetadata

RFC 9728 protected resource metadata of one Company domain (Personal Agent Protocol 3.2).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** |  | 
**authorization_servers** | **List[str]** |  | 
**bearer_methods_supported** | **List[str]** |  | [optional] 
**scopes_supported** | **List[str]** |  | [optional] 

## Example

```python
from lumoauth_api_client.models.poppy_protected_resource_metadata import PoppyProtectedResourceMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of PoppyProtectedResourceMetadata from a JSON string
poppy_protected_resource_metadata_instance = PoppyProtectedResourceMetadata.from_json(json)
# print the JSON string representation of the object
print(PoppyProtectedResourceMetadata.to_json())

# convert the object into a dict
poppy_protected_resource_metadata_dict = poppy_protected_resource_metadata_instance.to_dict()
# create an instance of PoppyProtectedResourceMetadata from a dict
poppy_protected_resource_metadata_from_dict = PoppyProtectedResourceMetadata.from_dict(poppy_protected_resource_metadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


