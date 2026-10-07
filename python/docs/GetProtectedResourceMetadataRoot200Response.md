# GetProtectedResourceMetadataRoot200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** |  | 
**authorization_servers** | **List[str]** |  | 
**bearer_methods_supported** | **List[str]** |  | 
**scopes_supported** | **List[str]** |  | [optional] 
**dpop_bound_access_tokens_required** | **bool** |  | [optional] 
**dpop_signing_alg_values_supported** | **List[str]** |  | [optional] 
**resources** | [**List[GetProtectedResourceMetadataRootResponse1ResourcesItem]**](GetProtectedResourceMetadataRootResponse1ResourcesItem.md) |  | 

## Example

```python
from lumoauth_api_client.models.get_protected_resource_metadata_root200_response import GetProtectedResourceMetadataRoot200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProtectedResourceMetadataRoot200Response from a JSON string
get_protected_resource_metadata_root200_response_instance = GetProtectedResourceMetadataRoot200Response.from_json(json)
# print the JSON string representation of the object
print(GetProtectedResourceMetadataRoot200Response.to_json())

# convert the object into a dict
get_protected_resource_metadata_root200_response_dict = get_protected_resource_metadata_root200_response_instance.to_dict()
# create an instance of GetProtectedResourceMetadataRoot200Response from a dict
get_protected_resource_metadata_root200_response_from_dict = GetProtectedResourceMetadataRoot200Response.from_dict(get_protected_resource_metadata_root200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


