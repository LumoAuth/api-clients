# LumoAuth.ApiClient.Model.ProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Resource** | **string** | The MCP server&#39;s resource identifier. | 
**AuthorizationServers** | **List&lt;string&gt;** | This organization&#39;s authorization server metadata URL. | 
**BearerMethodsSupported** | **List&lt;string&gt;** |  | 
**ScopesSupported** | **List&lt;string&gt;** |  | [optional] 
**DpopBoundAccessTokensRequired** | **bool** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional] 
**DpopSigningAlgValuesSupported** | **List&lt;string&gt;** | Only with dpop_bound_access_tokens_required. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

