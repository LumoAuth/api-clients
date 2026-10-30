# ProtectedResourceMetadata


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **str** | The MCP server&#39;s resource identifier. | 
**authorization_servers** | **List[str]** | The organization&#39;s issuer identifier (RFC 8414), the same value as &#x60;issuer&#x60; in its discovery documents. Clients read the authorization server metadata from {issuer}/.well-known/openid-configuration. | 
**bearer_methods_supported** | **List[str]** |  | 
**scopes_supported** | **List[str]** |  | [optional] 
**dpop_bound_access_tokens_required** | **bool** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional] 
**dpop_signing_alg_values_supported** | **List[str]** | Only with dpop_bound_access_tokens_required. | [optional] 

## Example

```python
from lumoauth_api_client.models.protected_resource_metadata import ProtectedResourceMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of ProtectedResourceMetadata from a JSON string
protected_resource_metadata_instance = ProtectedResourceMetadata.from_json(json)
# print the JSON string representation of the object
print(ProtectedResourceMetadata.to_json())

# convert the object into a dict
protected_resource_metadata_dict = protected_resource_metadata_instance.to_dict()
# create an instance of ProtectedResourceMetadata from a dict
protected_resource_metadata_from_dict = ProtectedResourceMetadata.from_dict(protected_resource_metadata_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


