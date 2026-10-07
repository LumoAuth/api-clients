# # ProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | The MCP server&#39;s resource identifier. |
**authorizationServers** | **string[]** | This organization&#39;s authorization server metadata URL. |
**bearerMethodsSupported** | **string[]** |  |
**scopesSupported** | **string[]** |  | [optional]
**dpopBoundAccessTokensRequired** | **bool** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional]
**dpopSigningAlgValuesSupported** | **string[]** | Only with dpop_bound_access_tokens_required. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
