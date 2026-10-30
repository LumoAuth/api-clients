# # ProtectedResourceMetadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | The MCP server&#39;s resource identifier. |
**authorizationServers** | **string[]** | The organization&#39;s issuer identifier (RFC 8414), the same value as &#x60;issuer&#x60; in its discovery documents. Clients read the authorization server metadata from {issuer}/.well-known/openid-configuration. |
**bearerMethodsSupported** | **string[]** |  |
**scopesSupported** | **string[]** |  | [optional]
**dpopBoundAccessTokensRequired** | **bool** | Present (true) only when the server accepts DPoP-bound tokens exclusively. | [optional]
**dpopSigningAlgValuesSupported** | **string[]** | Only with dpop_bound_access_tokens_required. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
