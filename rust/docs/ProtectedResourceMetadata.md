# ProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **String** | The MCP server's resource identifier. | 
**authorization_servers** | **Vec<String>** | This organization's authorization server metadata URL. | 
**bearer_methods_supported** | **Vec<String>** |  | 
**scopes_supported** | Option<**Vec<String>**> |  | [optional]
**dpop_bound_access_tokens_required** | Option<**bool**> | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional]
**dpop_signing_alg_values_supported** | Option<**Vec<String>**> | Only with dpop_bound_access_tokens_required. | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


