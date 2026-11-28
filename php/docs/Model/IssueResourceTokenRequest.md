# # IssueResourceTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resource** | **string** | Required. The resource identifier of the calling resource (&#x60;resource_identifier&#x60; is accepted as well). The HTTP message signature is checked with the registered keys of this resource. |
**agent** | **string** | Agent identifier the resource token is bound to. |
**agentJkt** | **string** | JWK thumbprint of the agent key (PoP binding). |
**scope** | **string** | Optional space-delimited requested scopes. | [optional]
**authRequestUrl** | **string** | Optional auth request URL to embed in the token. | [optional]
**authServer** | **string** | Optional auth server URL for the aud claim; defaults to this issuer. | [optional]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
